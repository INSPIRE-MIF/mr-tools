# INSPIRE M&R Link Checker

This repository provides a set of Python scripts that implement parts of the [INSPIRE Data Service Linking Simplification Good Practice](https://github.com/INSPIRE-MIF/gp-data-service-linking-simplification).

Called `MS` a Member State, the scripts can be used as follows:
* The `input` folder includes the metadata records harvested from all the endpoints for the M&R 2023 process, and extracted in CSV files using the SQL queries available in the `dataset-metadata-extraction` folder in the root of the repository.
* The scripts `view.py` and `download.py` extract, from each CSV, the list of URLs to view and download services for each metadata identifiers. These are stored in the files 
