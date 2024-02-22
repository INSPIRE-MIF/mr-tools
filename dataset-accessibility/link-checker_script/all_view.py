import os
import csv
import requests
#import view

# Define a custom timeout (in seconds) for the requests
request_timeout = 5  # Adjust the timeout as needed

# Function to send a request to the URL and check the response
def check_url(url):
    try:
        # First, attempt a HEAD request
        response = requests.head(url, timeout=request_timeout, allow_redirects=True)
        if response.status_code == 200:
            return True, None
        else:
            # If HEAD method is not allowed or returns a non-200 status code, fall back to a GET request
            response = requests.get(url, timeout=request_timeout)
            if response.status_code == 200:
                return True, None
            else:
                return False, f"URL responded with status code: {response.status_code}"
    except requests.exceptions.RequestException as e:
        # If both HEAD and GET requests fail, log the specific exception message
        return False, str(e)

# Specify the directory containing input CSV files
input_directory = 'view'
summary_stats_file = 'view/summary_statistics.csv'

# Create a list to store summary statistics for each CSV file
summary_stats = []

# Process each CSV file in the directory
for input_file in os.listdir(input_directory):
    if input_file.endswith(".csv"):
        input_csv = os.path.join(input_directory, input_file)
        output_csv = 'view/' + input_file.rstrip('.csv') + '_url_check_results.csv'
        failed_log = 'view/' + input_file.rstrip('.csv') + '_failed_requests.log'

        # Sets to track UUIDs
        successful_uuids = set()
        all_uuids = set()

        # Process the CSV file
        with open(input_csv, mode='r', newline='', encoding='utf-8') as infile, \
             open(output_csv, mode='w', newline='', encoding='utf-8') as outfile, \
             open(failed_log, mode='w', newline='', encoding='utf-8') as log_file:
            
            reader = csv.DictReader(infile)
            writer = csv.DictWriter(outfile, fieldnames=['uuid', 'url', 'url_status'])
            writer.writeheader()

            for row in reader:
                uuid = row['uuid']
                url = row['data']  # Make sure the column name is 'url' or change accordingly
                all_uuids.add(uuid)  # Add the UUID to all_uuids set

                # Skip checking the URL if a successful response has been received for this UUID
                if uuid in successful_uuids:
                    continue

                # Check the URL and record the status and error message
                url_status, error_message = check_url(url)

                # If the URL check is successful, add the UUID to successful_uuids set
                if url_status:
                    successful_uuids.add(uuid)
                else:
                    # Log the failed request, associated UUID, and the error message
                    log_file.write(f"UUID {uuid}: URL {url} failed - {error_message}\n")

                # Write the result to the output CSV
                writer.writerow({'uuid': uuid, 'url': url, 'url_status': int(url_status)})

                print(f"UUID {uuid}: URL {url} responded with status {int(url_status)}")

            # Determine UUIDs without any successful response
            failed_uuids = all_uuids - successful_uuids

            # Statistics
            success_count = len(successful_uuids)
            failure_count = len(failed_uuids)

            # Append summary statistics for the current input file to the list
            summary_stats.append({
                'input_file': input_file,
                'total_uuids': len(all_uuids),
                'success_count': success_count,
                'failure_count': failure_count
            })

            # Print final statistics
            print(f"Finished checking URLs. Results have been written to: {output_csv}")
            print(f"Failed requests have been logged to: {failed_log}")
            print(f"Total number of unique UUIDs processed for {input_file}: {len(all_uuids)}")
            print(f"Statistics: {success_count} UUID(s) with at least one successful response")
            print(f"Statistics: {failure_count} UUID(s) without any successful response")

# Write the summary statistics to a CSV file
with open(summary_stats_file, mode='w', newline='', encoding='utf-8') as summary_file:
    fieldnames = ['input_file', 'total_uuids', 'success_count', 'failure_count']
    writer = csv.DictWriter(summary_file, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(summary_stats)

# Print summary statistics file creation message
print(f"Summary statistics have been written to: {summary_stats_file}")