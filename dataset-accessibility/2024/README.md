# INSPIRE Monitoring and Reporting 2024 - Dataset and Service Accessibility evaluation using GeoNetwork

This folder contains information on the evaluation of the accessibility of datasets through View and Download services using the GeoNetwork Link-Checker ([v1.1.8](https://github.com/geonetwork/geonetwork-remoteharvester/commits/v1.1.8) commit). 

This version of the Link-Checker evaluates dataset accessibility according the following two procedures:

* The 'Classic' accessibility checks stemming from the Classic INSPIRE Geoportal (based on the INSPIRE Technical Guidelines).
* The ['Data-Service Linking Simplification' Good Practice](https://github.com/INSPIRE-MIF/gp-data-service-linking-simplification/blob/main/good-practice/data-service-linking-simplification-spec.md), exploiting the information reported through the './gmd:MD_DigitalTransferOptions/gmd:online/gmd:CI_OnlineResource' metadata element.

The metadata records were exploited directly from the INSPIRE Geoportal GeoNetwork Postgres database.

The logs obtained from the GeoNetwork Link-Chekcer database are stored in the '[/geonetwork.logs](https://github.com/INSPIRE-MIF/mr-tools/tree/main/dataset-accessibility/2024/geonetwork-logs)' folder.

NOTE: This folder is still been updated. Work is ongoing for completing the extracted accessibility logs.
