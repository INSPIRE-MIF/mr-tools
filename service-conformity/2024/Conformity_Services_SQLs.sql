-- M&R 2024 EVALUATION OF SERVICES CONFORMITY VIA SQL

WITH 
endpoint (endpoint_uuid) AS (
	SELECT '8d8e666a-de4f-49ad-808b-01ba51b62d7d' -- AT
--	SELECT '07041901-432c-4c25-9f0a-2313871b32e9' -- BE-GEO
-- 	SELECT 'fcbd6e24-8a3c-480b-a1c5-7c0eb3f1b86c' -- BE-GEOBRU
-- 	SELECT '46372588-232e-41d9-8404-118e547f9cd6' -- BE-WALLONIE
-- 	SELECT '16ef7cb3-b144-4d16-bf6b-1d99ac4df143' -- BE-VLAANDEREN
-- 	SELECT '0513916a-d442-4974-afd1-47d9ccc27b23' -- BG
--	SELECT 'b50f8b12-5b04-4648-be93-ee103002e4f3' -- HR
-- 	SELECT '0ebf78d5-7b65-40cf-9ac7-e5b2cb3771ea' -- CY
-- 	SELECT '8b722540-763d-4ea2-985e-9bcf6bfe82ca' -- CZ
-- 	SELECT '76edce98-d5a3-44bb-9ff5-2c29b422c5a2' -- DK	
-- 	SELECT '02c2748f-82ca-4ceb-92de-70e1d620d496' -- EE
-- 	SELECT 'b0259e81-cd1c-4354-bfa2-5cad4c3c7308' -- FI
-- 	SELECT 'e44416c9-082c-4ffe-9b43-e776960f1fa2' -- FR
-- 	SELECT '711a39f4-880f-4704-b005-51798adb4a3d' -- DE	
-- 	SELECT 'd6c7bb79-beb4-4efc-8e99-b2b386004de7' -- EL
-- 	SELECT '38126778-f198-4fe3-a71f-81f994ea7401' -- HU
-- 	SELECT '0f15a1d5-3ae5-4169-8cd0-1e9f14cf8baf' -- IS
-- 	SELECT '16a10f8c-5931-49b9-b9b2-923b69d36f15' -- IE	
-- 	SELECT '1bae6e77-8e8e-480c-be6b-d9f47f31371b' -- IT
-- 	SELECT '7447eb94-46a8-4995-9fc0-635ff0d2f5c2' -- LV	
--	SELECT '71c96a8f-fb74-4bc6-9a15-2f798f62a7d4' -- LI
-- 	SELECT '470a8afd-bd30-4bc6-a044-cbbc46c89c68' -- LT
-- 	SELECT '29f5dbeb-474e-42a3-94bc-1b76952299ad' -- LU
-- 	SELECT '04e44bbf-163c-42fa-ab6c-a2114c1eee5b' -- MT   Changed - Old: b9545f06-11ac-4a81-8079-9d63cd625f58 
--	SELECT '9d92d1c4-c4b6-4d8c-8cec-0fc58989615f' -- MD   New
-- 	SELECT '8e9f6f41-12a5-4c7b-a75e-d0faa7974d4c' -- NL
-- 	SELECT 'cad4f63a-2868-4116-b140-e2b324133207' -- NO
-- 	SELECT '85a23ec3-62d5-4c15-875d-b6802485b629' -- PL
-- 	SELECT 'e5584907-90de-424d-8d40-7f7a418e569b' -- PT
-- 	SELECT 'f2e04512-5b00-4fd6-986f-7be30c75eb35' -- RO
-- 	SELECT 'a6d029e3-fbb1-4459-86fd-e74ec0ed1b23' -- SK   Changed - Old: 1f8aac63-304d-4618-b18e-1ff28627e051
-- 	SELECT '7ca98445-49f7-4e1a-9365-627650113b6d' -- SI	
-- 	SELECT '917ecef2-030d-4f61-a874-a8fa45dbb1e5' -- ES
-- 	SELECT 'deea5672-2d32-46ae-be07-aec9e4c58849' -- SE
-- 	SELECT '864dd8d5-5e47-47b4-8115-9675d62d316e' -- CH
),

tbl_xml(uuid, data_xml) AS (  -- table with xml value
   SELECT m.uuid, m.data::xml FROM metadata m, endpoint 
   WHERE ((m.harvestuuid = endpoint.endpoint_uuid ) AND 
		((LOWER(m.data) LIKE '%codelistvalue="service"%'))

-- DISCOVERY Service Filter  
-- 		AND (
-- 	 		(LOWER(m.data) LIKE '%<gmd:md_metadata%<gmd:identificationinfo%<srv:sv_serviceidentification%<srv:servicetype%<gco:localname%discovery</gco:localname%</srv:servicetype%')
--  	) 
		  
-- DISCOVERY Service Filter -- Used for LV only: substituted %<gmd:identificationinfo per %<identificationinfo 
-- 		AND (
-- 	 		(LOWER(m.data) LIKE '%<gmd:md_metadata%<identificationinfo%<srv:sv_serviceidentification%<srv:servicetype%<gco:localname%discovery</gco:localname%</srv:servicetype%')
--  	) 		  
		  
-- VIEW Service Filter -- 
-- 		AND (
-- 	 		(LOWER(m.data) LIKE '%<gmd:md_metadata%<gmd:identificationinfo%<srv:sv_serviceidentification%<srv:servicetype%<gco:localname%view</gco:localname%</srv:servicetype%')		  
--  	) 
		  
-- VIEW Service Filter -- Used for LV only: substituted %<gmd:identificationinfo by %<%identificationinfo
-- 		AND (
-- 	 		(LOWER(m.data) LIKE '%<gmd:md_metadata%<identificationinfo%<srv:sv_serviceidentification%<srv:servicetype%<gco:localname%view</gco:localname%</srv:servicetype%')		  
--  	) 
		  
-- DOWNLOAD Service Filter -- 
-- 		AND (
-- 	 		(LOWER(m.data) LIKE '%<gmd:md_metadata%<gmd:identificationinfo%<srv:sv_serviceidentification%<srv:servicetype%<gco:localname%download</gco:localname%</srv:servicetype%')		  		  
--  	) 
		  
-- DOWNLOAD Service Filter -- Used for LV only: substituted %<gmd:identificationinfo by %<identificationinfo
-- 		AND (
-- 	 		(LOWER(m.data) LIKE '%<gmd:md_metadata%<identificationinfo%<srv:sv_serviceidentification%<srv:servicetype%<gco:localname%download</gco:localname%</srv:servicetype%')		  		  
--  	) 
		  
-- TRANSFORMATION Service Filter -- 
-- 		AND (
-- 	 		(LOWER(m.data) LIKE '%<gmd:md_metadata%<gmd:identificationinfo%<srv:sv_serviceidentification%<srv:servicetype%<gco:localname%transformation</gco:localname%</srv:servicetype%')		  		  
--  	)
		  
-- TRANSFORMATION Service Filter -- Used for LV only: substituted %<gmd:identificationinfo by %<identificationinfo
-- 		AND (
-- 	 		(LOWER(m.data) LIKE '%<gmd:md_metadata%<identificationinfo%<srv:sv_serviceidentification%<srv:servicetype%<gco:localname%transformation</gco:localname%</srv:servicetype%')		  		  
--  	)
		  
   )
),  -- end of table tbl_xml


tbl_sum(uuid, titleInfo, passInfo) AS (  -- table with pass summary
	SELECT uuid, 
--	data_xml::text XMLFile,
	(xpath('/gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title/*[contains(text(), "976/2009")]', data_xml   
	              , ARRAY[ARRAY['gmd', 'http://www.isotc211.org/2005/gmd'], ARRAY['gmx', 'http://www.isotc211.org/2005/gmx'], ARRAY['xlink', 'http://www.w3.org/1999/xlink'], ARRAY['gco', 'http://www.isotc211.org/2005/gco']] ))[1]::text titleInfo,
	(xpath('/gmd:MD_Metadata/gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title/*[contains(text(), "976/2009")]/../../../../gmd:pass/gco:Boolean/text()', data_xml
				  , ARRAY[ARRAY['gmd', 'http://www.isotc211.org/2005/gmd'], ARRAY['gmx', 'http://www.isotc211.org/2005/gmx'], ARRAY['xlink', 'http://www.w3.org/1999/xlink'], ARRAY['gco', 'http://www.isotc211.org/2005/gco']] ))[1]::text passInfo 
	FROM tbl_xml	
)  -- end of table tbl_sum


--	TOTAL SERVICES (ALL SERVICES or SERVICES PER TYPE - Depending on the FILTER applied)
	SELECT COUNT(uuid) FROM tbl_xml;
 
 
--	TOTAL CONFORMANT SERVICES (Depending on the FILTER applied)
--	SELECT uuid, titleInfo, passInfo FROM tbl_sum; -- ONLY FOR TEST
--	SELECT COUNT(uuid) FROM tbl_sum WHERE passInfo = 'true';
  

--	TOTAL NON-CONFORMANT SERVICES (Depending on the FILTER applied)
--	SELECT COUNT(uuid) FROM tbl_sum WHERE passInfo = 'false';

