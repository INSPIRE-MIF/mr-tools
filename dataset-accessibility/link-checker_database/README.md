# INSPIRE Monitoring and Reporting 2023 - Dataset and Service Accessibility evaluation via database

This folder provides a set of SQL queries to evaluate the potential accessibility of datasets through View and Download services exploiting the information reported through the './gmd:MD_DigitalTransferOptions/gmd:online/gmd:CI_OnlineResource' metadata element - in application of the INSPIRE Data-Service Linking Simplification Good Practice approach, without testing if the URL links reported in this element were operational. The metadata records are exploited directly from the INSPIRE Geoportal GeoNetwork Postgres database.

* 'Viewables_via_SQL.sql' - Accessibility of datasets thorugh View services.
* 'Downloadables_via_SQL.sql' - Accessibility of datasets thorugh Download services.

The results were used as background information for testing the Python script finally used for evaluating the final Accessibility indicators.
