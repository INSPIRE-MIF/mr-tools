import csv
from bs4 import BeautifulSoup
import re
import sys
from lxml import etree  # Importing lxml for XML parsing

# Increase the size limit for fields in CSV
csv.field_size_limit(sys.maxsize)

ms = 'EL'  # MS input file

input_csv = 'input/' + ms + '.csv'  # Replace with your input CSV file name
output_csv = 'download/Download_' + ms + '.csv'  # Replace with your output CSV file name

# Define a regex pattern for URLs containing a download service
url_pattern = re.compile(r'https?://.*?(WFS|wfs|atom|ATOM|WCS|wcs|SOS|sos|API Features|SensorThings).*', re.IGNORECASE)

# Function to extract WFS URLs from the metadata.data field
def find_wfs_urls(xml_content):
    urls = []

    # Remove the XML declaration from the content
    xml_content = xml_content.replace('<?xml version="1.0"?>', '')

    # Parse the XML content
    root = etree.fromstring(xml_content)

    # Define the XML namespaces
    namespaces = {"gmd": "http://www.isotc211.org/2005/gmd"}

    # Find all URL elements using XPath and extract the URLs
    url_elements = root.xpath("//gmd:URL/text()", namespaces=namespaces)
    for url in url_elements:
        match = url_pattern.search(url)
        if match:
            urls.append(url)

    return urls

# Process the CSV file
with open(input_csv, mode='r', newline='', encoding='utf-8') as infile, \
        open(output_csv, mode='w', newline='', encoding='utf-8') as outfile:
    
    reader = csv.DictReader(infile, delimiter='|')  # Set the delimiter to a pipe
    writer = csv.DictWriter(outfile, fieldnames=['uuid', 'data'])  # Set the delimiter to a pipe
    writer.writeheader()

    for row in reader:
        # Extract the UUID and data
        uuid = row['uuid']
        data = row['data']

        # Find WFS URLs in the metadata.data field
        wfs_urls = find_wfs_urls(data)

        # Debugging: Print the UUID and found URLs
        print(f"UUID {uuid}: Found Download service URLs: {wfs_urls}")

        # Write found URLs to the output CSV
        for url in wfs_urls:
            writer.writerow({'uuid': uuid, 'data': url})

print("Finished processing. WFS ATOM SOS WCS STA OAPIF URLs extracted to:", output_csv)
