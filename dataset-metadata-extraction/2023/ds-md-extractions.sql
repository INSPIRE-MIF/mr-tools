-- M&R 2023 DATASET METADATA EXTRACTIONS

-- 07041901-432c-4c25-9f0a-2313871b32e9	BE-GEO
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '07041901-432c-4c25-9f0a-2313871b32e9') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 91

-- fcbd6e24-8a3c-480b-a1c5-7c0eb3f1b86c	BE-GEOBRU
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = 'fcbd6e24-8a3c-480b-a1c5-7c0eb3f1b86c') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 54

-- 46372588-232e-41d9-8404-118e547f9cd6	BE-WALLONIE
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '46372588-232e-41d9-8404-118e547f9cd6') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 172

-- 16ef7cb3-b144-4d16-bf6b-1d99ac4df143	BE-VLAANDEREN
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '16ef7cb3-b144-4d16-bf6b-1d99ac4df143') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 284

-- b50f8b12-5b04-4648-be93-ee103002e4f3	HR
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = 'b50f8b12-5b04-4648-be93-ee103002e4f3') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 158

-- 8b722540-763d-4ea2-985e-9bcf6bfe82ca	CZ
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '8b722540-763d-4ea2-985e-9bcf6bfe82ca') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 90

-- e44416c9-082c-4ffe-9b43-e776960f1fa2	FR
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = 'e44416c9-082c-4ffe-9b43-e776960f1fa2') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 200

-- 8e9f6f41-12a5-4c7b-a75e-d0faa7974d4c	NL
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '8e9f6f41-12a5-4c7b-a75e-d0faa7974d4c') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 243

-- 917ecef2-030d-4f61-a874-a8fa45dbb1e5	ES
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '917ecef2-030d-4f61-a874-a8fa45dbb1e5') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 286

-- 02c2748f-82ca-4ceb-92de-70e1d620d496	EE
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '02c2748f-82ca-4ceb-92de-70e1d620d496') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 91

-- 0513916a-d442-4974-afd1-47d9ccc27b23	BG
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '0513916a-d442-4974-afd1-47d9ccc27b23') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 172

-- d6c7bb79-beb4-4efc-8e99-b2b386004de7	EL
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = 'd6c7bb79-beb4-4efc-8e99-b2b386004de7') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 45

-- 470a8afd-bd30-4bc6-a044-cbbc46c89c68	LT
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '470a8afd-bd30-4bc6-a044-cbbc46c89c68') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 96

-- cad4f63a-2868-4116-b140-e2b324133207	NO
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = 'cad4f63a-2868-4116-b140-e2b324133207') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 143

-- e5584907-90de-424d-8d40-7f7a418e569b	PT
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = 'e5584907-90de-424d-8d40-7f7a418e569b') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 459

-- 7447eb94-46a8-4995-9fc0-635ff0d2f5c2	LV
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '7447eb94-46a8-4995-9fc0-635ff0d2f5c2') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 158

-- 85a23ec3-62d5-4c15-875d-b6802485b629	PL
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '85a23ec3-62d5-4c15-875d-b6802485b629') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 178

-- 864dd8d5-5e47-47b4-8115-9675d62d316e	CH
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '864dd8d5-5e47-47b4-8115-9675d62d316e') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 217

-- 16a10f8c-5931-49b9-b9b2-923b69d36f15	IE
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '16a10f8c-5931-49b9-b9b2-923b69d36f15') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 83

-- 8d8e666a-de4f-49ad-808b-01ba51b62d7d	AT
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '8d8e666a-de4f-49ad-808b-01ba51b62d7d') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 988

-- 29f5dbeb-474e-42a3-94bc-1b76952299ad	LU
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '29f5dbeb-474e-42a3-94bc-1b76952299ad') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 312

-- 76edce98-d5a3-44bb-9ff5-2c29b422c5a2	DK
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '76edce98-d5a3-44bb-9ff5-2c29b422c5a2') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 203

-- 71c96a8f-fb74-4bc6-9a15-2f798f62a7d4	LI
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '71c96a8f-fb74-4bc6-9a15-2f798f62a7d4') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 81

-- 0f15a1d5-3ae5-4169-8cd0-1e9f14cf8baf	IS
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '0f15a1d5-3ae5-4169-8cd0-1e9f14cf8baf') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 105

-- f2e04512-5b00-4fd6-986f-7be30c75eb35	RO
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = 'f2e04512-5b00-4fd6-986f-7be30c75eb35') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 115

-- 1f8aac63-304d-4618-b18e-1ff28627e051	SK
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '1f8aac63-304d-4618-b18e-1ff28627e051') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 137

-- deea5672-2d32-46ae-be07-aec9e4c58849	SE
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = 'deea5672-2d32-46ae-be07-aec9e4c58849') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 249

-- 7ca98445-49f7-4e1a-9365-627650113b6d	SI
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '7ca98445-49f7-4e1a-9365-627650113b6d') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 98

-- 38126778-f198-4fe3-a71f-81f994ea7401	HU
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '38126778-f198-4fe3-a71f-81f994ea7401') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 97

-- 0ebf78d5-7b65-40cf-9ac7-e5b2cb3771ea	CY
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '0ebf78d5-7b65-40cf-9ac7-e5b2cb3771ea') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 43

-- b9545f06-11ac-4a81-8079-9d63cd625f58	MT
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = 'b9545f06-11ac-4a81-8079-9d63cd625f58') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 151

-- b0259e81-cd1c-4354-bfa2-5cad4c3c7308	FI
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = 'b0259e81-cd1c-4354-bfa2-5cad4c3c7308') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 458

-- 1bae6e77-8e8e-480c-be6b-d9f47f31371b	IT
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '1bae6e77-8e8e-480c-be6b-d9f47f31371b') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 8190

-- 711a39f4-880f-4704-b005-51798adb4a3d	DE
-- NOTE: This SQL statement takes long time due to the high number of record results obtained, giving a timeout in PgAdmin - A second SQL is proposed below to get the same results in a table included in the GeoNetwork database.
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data FROM metadata m WHERE ((m.harvestuuid = '711a39f4-880f-4704-b005-51798adb4a3d') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 108644

-- NOTE: 2nd SQL statement for DE: to get the same results as the first SQL statement but in a GeoNetwork database table.
-- SELECT * INTO newtable [IN externaldb] FROM oldtable WHERE condition;
-- SELECT m.uuid as uuid, REPLACE(REPLACE(m.data, chr(9), ''), chr(10), '') as data 
-- INTO mddatasetsde
-- FROM metadata m WHERE ((m.harvestuuid = '711a39f4-880f-4704-b005-51798adb4a3d') AND ((m.data LIKE '%codeListValue="dataset"%') OR (m.data LIKE '%codeListValue="series"%')))
-- Result 108644


