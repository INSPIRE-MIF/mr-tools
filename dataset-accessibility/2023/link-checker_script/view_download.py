import os
import pandas as pd

# Define the directories
view_dir = 'view'
download_dir = 'download'

# Function to extract country name from filename
def extract_country_name(filename):
    parts = filename.split('_')  # Split the filename by '_'
    for i in range(len(parts)):
        if 'url' in parts[i]:  # Find the part that contains 'url'
            country_name = parts[i-1]  # Get the part before 'url'
            return country_name
    return None

# Create a dictionary to store UUIDs per country with url_status == 1
uuids_per_country = {}

# Process files in both directories
for dir_name in ['view', 'download']:
    dir_path = os.path.join(dir_name)
    for filename in os.listdir(dir_path):
        if filename.endswith('.csv'):
            country_name = extract_country_name(filename)
            if country_name:
                # Initialize country in dictionary if not present
                if country_name not in uuids_per_country:
                    uuids_per_country[country_name] = {'view': set(), 'download': set()}
                
                # Read the CSV file
                file_path = os.path.join(dir_path, filename)
                df = pd.read_csv(file_path)
                
                # Filter rows with url_status == 1 and get unique UUIDs
                valid_uuids = df[df['url_status'] == 1]['uuid'].unique()
                
                # Add the UUIDs to the set for the appropriate directory
                uuids_per_country[country_name][dir_name].update(valid_uuids)

# Prepare the summary data
summary_data = []
for country, uuid_sets in uuids_per_country.items():
    # Find intersection of UUIDs between 'view' and 'download' with url_status == 1
    common_uuids = uuid_sets['view'].intersection(uuid_sets['download'])
    common_uuids_count = len(common_uuids)
    summary_data.append((country, common_uuids_count))

# Create a DataFrame for the summary and write to CSV
summary_df = pd.DataFrame(summary_data, columns=['Country', 'Common UUIDs with url_status 1'])
summary_df.to_csv('summary.csv', index=False)

print("Summary statistics generated successfully and saved to 'summary.csv'.")