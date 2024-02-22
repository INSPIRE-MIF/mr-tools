# INSPIRE M&R Link Checker

This repository provides a set of Python scripts that implement parts of the [INSPIRE Data Service Linking Simplification Good Practice](https://github.com/INSPIRE-MIF/gp-data-service-linking-simplification).

Called `MS` a Member State, the scripts can be used as follows:
* The `input` folder includes the metadata records harvested from all the endpoints for the M&R 2023 process, and extracted in CSV files using the SQL queries available in the `dataset-metadata-extraction` folder in the root of the repository.
* The scripts `view.py` and `download.py` extract, from each CSV, the lists of URLs to view and download services for each metadata identifier, respectively. These lists are stored in the CSV files `View_MS` and `Download_MS` in the folders `view` and `download`, respectively.
* The scripts `view_url.py` and `download_url.py` check, for each CSV, whether the URLs detected for view and download services are actually reachable within the required time limit (5s for view services and 10s for download services). The results are stored in the files: `View_MS_url_check_results.csv` and `View_MS_failed_requests.log`, the latter logging the reasons for failing to contact specific URLs for view services, in the folder `view`; and `Download_MS_url_check_results.csv` and `Download_MS_failed_requests.log`, the latter logging the reasons for failing to contact specific URLs for download services, in the folder `download`.
* The scripts `all_view.py` and `all_download.py` do the same but perform the checks for all countries together.
* The script `view_download.py` checks whether, for each metadata identifier, both a valid view URL and download URL were found, and writes the results in the file `summary.csv`.
