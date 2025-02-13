# INSPIRE Monitoring and Reporting 2023 - Dataset conformity evaluation

This folder contains a set of SQL queries to automatically check the conformity of datasets reported by each Member State / EFTA Country as part of the Monitoring and Reporting (M&R) 2023 process. The metadata records are exploited directly from the INSPIRE Geoportal GeoNetwork Postgres database.

The SQL queries extract the self-declared conformity to Commission Regulation (EU) No 1089/2010 on interoperability of spatial data sets, reported under the '/gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/' path of the datasets metadata records, and count the results.

A different filter may be applied each time to select only INSPIRE Annex I, Annex II or Annex III datasets as part of the evaluation.

The result is either: 

* the **Total of Datasets** (All datasets or the Total of dataset per INSPIRE Annex - Depending on the filter applied).
* the **Total of Conformant Datasets** (Depending on the filter applied).
* the **Total of Non-Conformant Datasets** (Depending on the filter applied).

depending on the SQL query and filter executed each time.

The results for each endpoint were collected in an Excel spreasheet to use them as input for the calculation of the Monitoring and Reporting (M&R) 2023 Dataset Conformity indicators. 
