create database TRNG_Collaterals from demonow as perm=0;

REPLACE MACRO TRNG_Collaterals.Query_Flow AS (SELECT * FROM TRNG_Collaterals.TF_Materials WHERE DocNum = 1;);

REPLACE MACRO TRNG_Collaterals.Select_Photos AS (
SELECT	* 
FROM	TRNG_Collaterals.Photos 
ORDER BY 1;);

