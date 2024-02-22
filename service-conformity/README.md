# INSPIRE Monitoring and Reporting 2023 - Service conformity evaluation

This folder contains a set of SQL queries to automatically check the conformity of services reported by each Member State / EFTA Country as part of the Monitoring and Reporting (M&R) 2023 process.

The SQL queries extracts the self-declared conformity to Regulation (EC) No 976/2009 as regards the Network Services, reported under the '/gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/' path of the service metadata records.

A different filter may be applied each time to select only Discovery, View, Download or Transformation services as part of the evaluation.

The result is either: 

* the **Total of Service** (All services or the Total of services corresponding to an specific service type - Depending on the filter applied).
* the **Total of Conformant Datasets** (Depending on the filter applied).
* the **Total of Non-Conformant Datasets** (Depending on the filter applied).

depending on the SQL query and filter executed each time.

The results for each endpoint were collected in an Excel spreasheet to use them as input for the calculation of the Monitoring and Reporting (M&R) 2023 Service Conformity indicators. 
