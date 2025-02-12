import psycopg2
import psycopg2.extras
from bs4 import BeautifulSoup
import re
import sys
import csv
from lxml import etree  # Importing lxml for XML parsing

# Increase the size limit for fields in CSV
csv.field_size_limit(sys.maxsize)

ms = 'DE'  # MS input file

output_csv = 'download/Download_' + ms + '.csv'  # Replace with your output CSV file name

# Define your database connection parameters
db_params = {
    'dbname': 'your_dbname',
    'user': 'your_username',
    'password': 'your_password',
    'host': 'your_host',
    'port': 'your_port'
}

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

# Connect to the PostgreSQL database
conn = psycopg2.connect(**db_params)
cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

# Define the SQL query to select data from the PostgreSQL table
query = 'SELECT uuid, data FROM your_table_name'

# Execute the query
cur.execute(query)

# Fetch all the rows
rows = cur.fetchall()

# Process the data from the database
with open(output_csv, mode='w', newline='', encoding='utf-8') as outfile:
    writer = csv.DictWriter(outfile, fieldnames=['uuid', 'data'])
    writer.writeheader()

    for row in rows:
        uuid = row['uuid']
        data = row['data']
        wfs_urls = find_wfs_urls(data)
        
        # Debugging: Print the UUID and found URLs
        print(f"UUID {uuid}: Found Download service URLs: {wfs_urls}")

        # Write found URLs to the output CSV
        for url in wfs_urls:
            writer.writerow({'uuid': uuid, 'data': url})

# Close the database connection
cur.close()
conn.close()

print("Finished processing. WFS ATOM SOS WCS STA OAPIF URLs extracted to output.csv")
