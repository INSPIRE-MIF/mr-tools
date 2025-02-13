# INSPIRE Monitoring and Reporting 2024 - Dataset conformity evaluation

This folder contains a set of SQL queries to automatically check the conformity of datasets reported by each Member State / EFTA Country as part of the Monitoring and Reporting (M&R) 2024 process. The metadata records are exploited directly from the INSPIRE Geoportal GeoNetwork Postgres database.

The SQL queries extract the self-declared conformity to Commission Regulation (EU) No 1089/2010 on interoperability of spatial data sets, reported under the '/gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/' path of the datasets metadata records, and count the results.

A different filter may be applied each time to select only INSPIRE Annex I, Annex II or Annex III datasets as part of the evaluation.

The changes compared to last year M&R process are:
* Updated harvester uuids for few endpoints.
* Improved methodology to apply the Annex filters. The multiple ways used by Member States and EFTA Countries to encode the INSPIRE theme keyword (basis for filtering by Annex) makes its machine-processing difficult. The filter has been enhanced to consider as many encoding options as possible. Interoperability should be improved in that respect in the future by applying the corresponding recommendations included in the INSPIRE metadata technical guidelines.  

The result is either: 

* the **Total of Datasets** (All datasets or the Total of dataset per INSPIRE Annex - Depending on the filter applied).
* the **Total of Conformant Datasets** (Depending on the filter applied).
* the **Total of Non-Conformant Datasets** (Depending on the filter applied).

depending on the SQL query and filter executed each time.
