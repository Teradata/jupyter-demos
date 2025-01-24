create database TRNG_RefineryOptimizer from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_SAFETY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-SAFETY/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_BLEND", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-BLEND/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_OPTTHRUPUT_WEIGHTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-OPTTHRUPUT-WEIGHTS/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_LAB", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-LAB/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_LIFTINGS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-LIFTINGS/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_LAB_COMP_GROUP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-LAB-COMP-GROUP/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_EXPAND_DAYS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-EXPAND-DAYS/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_MATERIAL_HIER_GROUP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-MATERIAL-HIER-GROUP/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_MARKETPRICE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-MARKETPRICE/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_PRICE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-PRICE/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_BLEND_RECIPE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-BLEND-RECIPE/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_EXPAND_YEARS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-EXPAND-YEARS/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_MATERIAL_HIER", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-MATERIAL-HIER/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_MATERIAL", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-MATERIAL/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_COST", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-COST/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_INVENTORY_DCD", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-INVENTORY-DCD/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_COSTFORENSICS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-COSTFORENSICS/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_LAB_COMP", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-LAB-COMP/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_PRICE_PLATTS_DCD", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-PRICE-PLATTS-DCD/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_MOVEMENTS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-MOVEMENTS/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_CALDATE", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-CALDATE/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_UNIT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-UNIT/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_BLEND_PRED", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-BLEND-PRED/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_SENSOR", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-SENSOR/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_CONTAINER", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-CONTAINER/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_SENSOR_DESCUNITS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-SENSOR-DESCUNITS/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_SENSOR_LOADPARAMS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-SENSOR-LOADPARAMS/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_EXPAND_SECONDS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-EXPAND-SECONDS/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_INVENTORY", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-INVENTORY/'));
create foreign table gs_tables_db."TRNG_RefineryOptimizer_DB250092_RO_TAG_CONTAINER_XREF", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-RefineryOptimizer/DB250092-RO-TAG-CONTAINER-XREF/'));
replace view TRNG_RefineryOptimizer.DB250092_RO_BLEND as locking row for access select
"Ref_Location"
,"Blend_ID"
,"Blend_Spec"
,"Blend_Date"
,"Blend_Time"
,"Material_ID"
,"Container_ID"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_BLEND;
replace view TRNG_RefineryOptimizer.DB250092_RO_BLEND_PRED as locking row for access select
"Ref_Location"
,"Blend_ID"
,"Component_ID"
,"Spec_Min"
,"Spec_Max"
,"Predicted_Value"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_BLEND_PRED;
replace view TRNG_RefineryOptimizer.DB250092_RO_BLEND_RECIPE as locking row for access select
"Ref_Location"
,"Blend_ID"
,"Blend_Rep"
,"Blend_PlanAct"
,"Material_ID"
,"Container_ID"
,"Blend_Component_Volume"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_BLEND_RECIPE;
replace view TRNG_RefineryOptimizer.DB250092_RO_CALDATE as locking row for access select
"Cal_Date"
,"Cal_Month"
,"Cal_Year"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_CALDATE;
replace view TRNG_RefineryOptimizer.DB250092_RO_CONTAINER as locking row for access select
"Ref_Location"
,"Container_ID"
,"Container_Type"
,"Container_Desc"
,"Min_Op_Qty"
,"Max_Op_Qty"
,"Min_Op_Hgt"
,"Max_Op_Hgt"
,"Units"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_CONTAINER;
replace view TRNG_RefineryOptimizer.DB250092_RO_COST as locking row for access select
"Ref_Location"
,"Cost_PlanAct"
,"Cost_FixedVar"
,"Cost_Date"
,"Cost_Time"
,"Cost_Description"
,"Cost_Value"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_COST;
replace view TRNG_RefineryOptimizer.DB250092_RO_COSTFORENSICS as locking row for access select
"Ref_Location"
,"CF_Type"
,"CF_Unit"
,"CF_ActPlan"
,"CF_Category1"
,"CF_Category2"
,"CF_Category3"
,"CF_Date"
,"CF_Cost"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_COSTFORENSICS;
replace view TRNG_RefineryOptimizer.DB250092_RO_EXPAND_DAYS as locking row for access select
"Expand_Days"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_EXPAND_DAYS;
replace view TRNG_RefineryOptimizer.DB250092_RO_EXPAND_SECONDS as locking row for access select
"Expand_Seconds"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_EXPAND_SECONDS;
replace view TRNG_RefineryOptimizer.DB250092_RO_EXPAND_YEARS as locking row for access select
"Expand_Years"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_EXPAND_YEARS;
replace view TRNG_RefineryOptimizer.DB250092_RO_INVENTORY as locking row for access select
"Ref_Location"
,"Container_ID"
,"Inventory_Date"
,"Inventory_Time"
,"Material_ID"
,"Gross_Qty"
,"Net_Qty"
,"Temperature"
,"Temperature_UOM"
,"Gauge"
,"Gauge_Ft"
,"Gauge_In"
,"BSW"
,"BSW_Ft"
,"BSW_In"
,"Water"
,"Units"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_INVENTORY;
replace view TRNG_RefineryOptimizer.DB250092_RO_INVENTORY_DCD as locking row for access select
"Ref_Location"
,"Material_ID"
,"Material"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_INVENTORY_DCD;
replace view TRNG_RefineryOptimizer.DB250092_RO_LAB as locking row for access select
"Ref_Location"
,"Sample_ID"
,"Component_ID"
,"Test_Rep"
,"Sample_Point"
,"Material_ID"
,"Container_ID"
,"Sample_Date"
,"Sample_Time"
,"Sample_By"
,"Receipt_Date"
,"Receipt_Time"
,"Receipt_By"
,"Login_Date"
,"Login_Time"
,"Login_By"
,"Complete_Date"
,"Complete_Time"
,"Complete_By"
,"Authorize_Date"
,"Authorize_Time"
,"Authorize_By"
,"Status"
,"Result_Value"
,"Result_MinSpec"
,"Result_MaxSpec"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_LAB;
replace view TRNG_RefineryOptimizer.DB250092_RO_LAB_COMP as locking row for access select
"Ref_Location"
,"Component_ID"
,"Component_Desc"
,"Component_Units"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_LAB_COMP;
replace view TRNG_RefineryOptimizer.DB250092_RO_LAB_COMP_GROUP as locking row for access select
"Ref_Location"
,"Component_Group"
,"Component_ID"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_LAB_COMP_GROUP;
replace view TRNG_RefineryOptimizer.DB250092_RO_LIFTINGS as locking row for access select
"Ref_Location"
,"BOL_Number"
,"BOL_Line_Number"
,"BOL_Version"
,"BOL_Product"
,"Material_ID"
,"BOL_Last_Modified_Date"
,"BOL_Last_Modified_Time"
,"Station"
,"Order_ID"
,"PO_Number"
,"Contract_ID"
,"Start_Date"
,"Start_Time"
,"Stop_Date"
,"Stop_Time"
,"Customer"
,"Carrier"
,"Destination"
,"Driver"
,"Container_ID"
,"Transport_ID"
,"Gross_Volume"
,"Net_Volume"
,"Volume_UOM"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_LIFTINGS;
replace view TRNG_RefineryOptimizer.DB250092_RO_MARKETPRICE as locking row for access select
"MPrice_Date"
,"MPrice_Symbol"
,"MPrice_Type"
,"MPrice_Units"
,"MPrice"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_MARKETPRICE;
replace view TRNG_RefineryOptimizer.DB250092_RO_MATERIAL as locking row for access select
"Ref_Location"
,"Material_ID"
,"Material_Code"
,"Material_Desc"
,"Price_Code"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_MATERIAL;
replace view TRNG_RefineryOptimizer.DB250092_RO_MATERIAL_HIER as locking row for access select
"Ref_Location"
,"Material_Cat1"
,"Material_Cat2"
,"Material_Cat3"
,"Material_Cat4"
,"Material_Cat5"
,"Material_Cat6"
,"Material_ID"
,"Material_Percent"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_MATERIAL_HIER;
replace view TRNG_RefineryOptimizer.DB250092_RO_MATERIAL_HIER_GROUP as locking row for access select
"Material_Hier_Group"
,"Ref_Location"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_MATERIAL_HIER_GROUP;
replace view TRNG_RefineryOptimizer.DB250092_RO_MOVEMENTS as locking row for access select
"Ref_Location"
,"Movement_Type"
,"Movement_Start_Date"
,"Movement_Start_Time"
,"Movement_Source_ID"
,"Movement_Dest_ID"
,"Movement_End_Date"
,"Movement_End_Time"
,"Material_ID"
,"Volume"
,"Weight"
,"Ticket_Number"
,"Comments"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_MOVEMENTS;
replace view TRNG_RefineryOptimizer.DB250092_RO_OPTTHRUPUT_WEIGHTS as locking row for access select
"Ref_Location"
,"Material"
,"PriceHigh_Today_USD_WT"
,"PriceHigh_Yesterday_USD_WT"
,"Plan_Today_USD_WT"
,"Actual_Today_USD_WT"
,"ActualDelta_Percent_WT"
,"Intercept"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_OPTTHRUPUT_WEIGHTS;
replace view TRNG_RefineryOptimizer.DB250092_RO_PRICE as locking row for access select
"Price_Source"
,"Price_Type"
,"Price_Date"
,"Price_Time"
,"Price_Code"
,"Price_Freq"
,"Price_Location"
,"Price_Description"
,"Price_Open"
,"Price_Low"
,"Price_High"
,"Price_Avg"
,"Price_Close"
,"Price_Index"
,"Price_Volume"
,"Price_UOM"
,"Price_Country"
,"Price_DeliveryType"
,"Price_Currency"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_PRICE;
replace view TRNG_RefineryOptimizer.DB250092_RO_PRICE_PLATTS_DCD as locking row for access select
"Price_MDC"
,"Price_Code"
,"Price_Bates"
,"Price_Precision"
,"Price_Freq"
,"Price_Currency"
,"Price_UOM"
,"Price_Conv"
,"Price_ConvArith"
,"Price_ToUOM"
,"Price_EarliestDate"
,"Price_LatestDate"
,"Price_Act"
,"Price_Description"
,"Price_Location"
,"Price_Group"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_PRICE_PLATTS_DCD;
replace view TRNG_RefineryOptimizer.DB250092_RO_SAFETY as locking row for access select
"Ref_Location"
,"Safety_Date"
,"Safety_Time"
,"Safety_ActPlan"
,"Safety_Metric"
,"Safety_Value"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_SAFETY;
replace view TRNG_RefineryOptimizer.DB250092_RO_SENSOR as locking row for access select
"Ref_Location"
,"Trans_Date"
,"Trans_Hour"
,"Trans_Min"
,"Trans_Sec"
,"Trans_Timestamp"
,"Tag_ID"
,"Tag_Value"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_SENSOR;
replace view TRNG_RefineryOptimizer.DB250092_RO_SENSOR_DESCUNITS as locking row for access select
"Ref_Location"
,"Tag_ID"
,"Tag_Desc"
,"Tag_Units"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_SENSOR_DESCUNITS;
replace view TRNG_RefineryOptimizer.DB250092_RO_SENSOR_LOADPARAMS as locking row for access select
"Extract_Group"
,"Ref_Location"
,"Tag1_ID"
,"Tag2_ID"
,"Tag3_ID"
,"Tag4_ID"
,"Tag5_ID"
,"Tag6_ID"
,"Tag7_ID"
,"Tag8_ID"
,"Tag9_ID"
,"Tag10_ID"
,"Tag11_ID"
,"Tag12_ID"
,"Tag13_ID"
,"Tag14_ID"
,"Tag15_ID"
,"Tag16_ID"
,"Tag17_ID"
,"Tag18_ID"
,"Tag19_ID"
,"Tag20_ID"
,"Tag21_ID"
,"Tag22_ID"
,"Tag23_ID"
,"Tag24_ID"
,"Tag25_ID"
,"Tag26_ID"
,"Tag27_ID"
,"Tag28_ID"
,"Tag29_ID"
,"Tag30_ID"
,"Tag31_ID"
,"Tag32_ID"
,"Tag33_ID"
,"Tag34_ID"
,"Tag35_ID"
,"Tag36_ID"
,"Tag37_ID"
,"Tag38_ID"
,"Tag39_ID"
,"Tag40_ID"
,"Tag41_ID"
,"Tag42_ID"
,"Tag43_ID"
,"Tag44_ID"
,"Tag45_ID"
,"Tag46_ID"
,"Tag47_ID"
,"Tag48_ID"
,"Tag49_ID"
,"Tag50_ID"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_SENSOR_LOADPARAMS;
replace view TRNG_RefineryOptimizer.DB250092_RO_TAG_CONTAINER_XREF as locking row for access select
"Ref_Location"
,"Container_ID"
,"Tag_ID"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_TAG_CONTAINER_XREF;
replace view TRNG_RefineryOptimizer.DB250092_RO_UNIT as locking row for access select
"Ref_Location"
,"Unit_Date"
,"Unit_Time"
,"Unit_Name"
,"Unit_RateType"
,"Unit_RateUOM"
,"Unit_RateValue"
,"Create_Dttm"
,"Last_Update_Dttm"
from gs_tables_db.TRNG_RefineryOptimizer_DB250092_RO_UNIT;
REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Blend_Giveaway_VW AS 
SELECT blend.ref_location,blend.blend_id,blend_spec,blend_date,blend_time,vol_actual,
	blend.material_id,material_desc,OCTGA_Code as Octane_Price_Code,
	OCTGA_Desc as Octane_Price_Desc,OCTGA_Price as Octane_Price,
	RM2_Predicted,RM2_Actual,RM2_MinSpec,
	cast((RM2_Actual-RM2_MinSpec)*vol_actual as integer) as Octane_GA_BBL,
	CASE WHEN Octane_GA_BBL<0 THEN 0 ELSE Octane_GA_BBL END AS Octane_GA_Corr_BBL,
	cast(Octane_GA_Corr_BBL*Octane_Price as integer) as Octane_GA_USD
	
FROM TRNG_RefineryOptimizer.DB250092_RO_Blend_VW BLEND
LEFT OUTER JOIN
	(
	SELECT Ref_Location,Blend_ID,
		max(RM2_Predicted) as RM2_Predicted,max(RVP_Predicted) as RVP_Predicted,
		max(RM2_Actual) as RM2_Actual,max(RVP_Actual) as RVP_Actual,
		max(RM2_MinSpec) as RM2_MinSpec,max(RVP_MinSpec) as RVP_MinSpec
	FROM
		(
		SELECT Ref_Location,Blend_ID,
			CASE Component_ID
				WHEN 78 THEN cast(predicted_value as Decimal(10,1))
			END AS RM2_Predicted,
			CASE Component_ID
				WHEN 78 THEN cast(result_value as Decimal(10,1))
			END AS RM2_Actual,
			CASE Component_ID
				WHEN 78 THEN cast(spec_min as Decimal(10,1))
			END AS RM2_MinSpec,
			CASE Component_ID
				WHEN 80 THEN cast(predicted_value as Decimal(10,1))
			END AS RVP_Predicted,
			CASE Component_ID
				WHEN 80 THEN cast(result_value as Decimal(10,1))
			END AS RVP_Actual,
			CASE Component_ID
				WHEN 80 THEN cast(spec_min as Decimal(10,1))
			END AS RVP_MinSpec
		FROM TRNG_RefineryOptimizer.DB250092_RO_BLEND_Lab_VW
		WHERE component_id in (78,80)
		) TEMP
	GROUP BY Ref_Location,Blend_ID	
	) LAB
	ON Blend.Ref_Location=Lab.Ref_Location
	AND Blend.Blend_ID=Lab.Blend_ID
LEFT OUTER JOIN
	(
	Select Price_Date,
		max(OCTGA_Code) as OCTGA_Code,max(OCTGA_Desc) as OCTGA_Desc,max(OCTGA_Price) as OCTGA_Price,
		max(RVPGA_Code) as RVPGA_Code,max(RVPGA_Desc) as RVPGA_Desc,max(RVPGA_Price) as RVPGA_Price,
		Price_UOM
	FROM
		(
		SELECT Price_Date,Price_Code,Price_Description,
			CASE Price_Code
				WHEN 'AANVX00' THEN Price_Code
			END AS OCTGA_Code,
			CASE Price_Code
				WHEN 'AANVX00' THEN Price_Description
			END AS OCTGA_Desc,
			CASE Price_Code
				WHEN 'AANVX00' THEN Price_High/100*42
			END AS OCTGA_Price,
			CASE Price_Code
				WHEN 'PMAAI00' THEN Price_Code
			END AS RVPGA_Code,
			CASE Price_Code
				WHEN 'PMAAI00' THEN Price_Description
			END AS RVPGA_Desc,
			CASE Price_Code
				WHEN 'PMAAI00' THEN Price_High/100*42
			END AS RVPGA_Price,
			'USD/BBL' AS Price_UOM
		FROM TRNG_RefineryOptimizer.DB250092_RO_Price_VW PRICE
		WHERE price_code in ('AANVX00','PMAAI00')
		) TEMP
	GROUP BY Price_Date,Price_UOM
	) PRICE
	ON Blend.Blend_Date=Price.Price_Date;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Blend_Lab_VW AS
	SELECT Blend.Ref_Location,Blend.Blend_ID,
		Predict.Component_ID,Component_Desc,Component_Units,
		Spec_Min,Spec_Max,Predicted_Value,Result_Value
	FROM TRNG_RefineryOptimizer.DB250092_RO_BLEND BLEND
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_BLEND_PRED PREDICT
		ON Blend.Ref_Location=Predict.Ref_Location
		AND Blend.Blend_ID=Predict.Blend_ID
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_LAB LAB
		ON Blend.Ref_Location=Lab.Ref_Location
		AND Blend.Blend_ID=Lab.Sample_Point
		AND Predict.Component_ID=Lab.Component_ID
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_LAB_COMP COMPONENT
		ON Blend.Ref_Location=Component.Ref_Location
		AND Predict.Component_ID=Component.Component_ID;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Blend_Recipe_VW AS
	SELECT Recipe.Ref_Location,Recipe.Blend_ID,Blend_Rep,Blend_PlanAct,
	Recipe.Material_ID,Material_Code,Material_Desc,
	Recipe.Container_ID,Container_Type,Container_Desc,Units,
	Blend_Component_Volume
	FROM TRNG_RefineryOptimizer.DB250092_RO_BLEND_RECIPE RECIPE
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_MATERIAL MATERIAL
		ON Recipe.Ref_Location=Material.Ref_Location
		AND Recipe.Material_ID=Material.Material_ID
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_CONTAINER CONTAINER
		ON Recipe.Ref_Location=Container.Ref_Location
		AND Recipe.Container_ID=Container.Container_ID
	WHERE Blend_Component_Volume>0;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Blend_VW AS
	SELECT Blend.Ref_Location,Blend.Blend_ID,Blend_Spec,Blend_Date,Blend_Time,
		Blend.Material_ID,Material_Code,Material_Desc,
		Blend.Container_ID,Container_Type,Container_Desc,
		Vol_Plan,Vol_Actual
	FROM TRNG_RefineryOptimizer.DB250092_RO_BLEND BLEND
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_MATERIAL MATERIAL
		ON Blend.Ref_Location=Material.Ref_Location
		AND Blend.Material_ID=Material.Material_ID
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_CONTAINER CONTAINER
		ON Blend.Ref_Location=Container.Ref_Location
		AND Blend.Container_ID=Container.Container_ID
	INNER JOIN		
		(
		SELECT Ref_Location,Blend_ID,sum(Vol_Plan) as Vol_Plan,sum(Vol_Actual) as Vol_Actual
		FROM
			(
			SELECT Ref_Location,Blend_ID,Material_ID,Container_ID,
				CASE Blend_PlanAct
					WHEN 'Actual' THEN Blend_Component_Volume
				END  as Vol_Actual,
				CASE Blend_PlanAct
					WHEN 'Plan' THEN Blend_Component_Volume
				END  as Vol_Plan
			FROM TRNG_RefineryOptimizer.DB250092_RO_BLEND_RECIPE RECIPE
			) TEMP
			GROUP BY Ref_Location,Blend_ID
		) VOLUME
		ON Blend.Ref_Location=Volume.Ref_Location
		AND Blend.Blend_ID=Volume.Blend_ID;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_CalDate_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_CALDATE;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Container_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_Container;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_CostForensics_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_COSTFORENSICS;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Cost_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_Cost;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Inventory_VW AS
SELECT inv.ref_location,inv.container_id,container_type,container_desc,
		inventory_date,inventory_time,
		inv.material_id,material_code,material_desc,
		material_cat1,material_cat2,material_cat3,material_cat4,material_cat5,
		material_cat6,gross_qty,bsw,water,net_qty as Net_Qty_BBL,
		Price.Price_Code,Price.Price_Description,Price.Price_UOM,Price.Price,
		Price.Price_Currency,temperature,temperature_uom,
		inv.units,min_op_qty,max_op_qty
	FROM TRNG_RefineryOptimizer.DB250092_RO_INVENTORY INV
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_CONTAINER CONT
		ON inv.ref_location=cont.ref_location
		AND inv.container_id=cont.container_id
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_MATERIAL MAT
		ON inv.ref_location=mat.ref_location
		AND inv.material_id=mat.material_id
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_MATERIAL_HIER MAT_HIER
		ON inv.ref_location=mat_hier.ref_location
		AND inv.material_id=mat_hier.material_id
	LEFT OUTER JOIN 
		(
		SELECT Price_Date,Price_Code,Price_Description,Price_UOM,
			Price_Currency,
			CASE
				WHEN Price_Close IS NOT NULL THEN Price_Close
				WHEN Price_Avg IS NOT NULL THEN Price_Avg
				WHEN Price_High IS NOT NULL THEN Price_High
				WHEN Price_Index IS NOT NULL THEN Price_Index 
			END AS Price
		FROM TRNG_RefineryOptimizer.DB250092_RO_PRICE
		) PRICE
		ON MAT.Price_Code=PRICE.Price_Code
		AND INV.Inventory_Date=Price.Price_Date;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Lab_VW AS
	SELECT LAB.Ref_Location,Sample_ID,LAB.Component_ID,Component_Desc,
		Component_Units,Test_Rep,Sample_Point,LAB.Material_ID,Material_Desc,
		LAB.Container_ID,Container_Desc,
		Sample_Date,Sample_Time,Sample_By,Receipt_Date,Receipt_Time,Receipt_By,
		Login_Date,Login_Time,Login_By,Complete_Date,Complete_Time,Complete_By,
		Authorize_Date,Authorize_Time,Authorize_By,Status,Result_Value,Result_MinSpec,
		Result_MaxSpec,LAB.Create_Dttm,LAB.Last_Update_Dttm 
	FROM TRNG_RefineryOptimizer.DB250092_RO_LAB LAB
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_LAB_COMP COMP
		ON LAB.Ref_Location=COMP.Ref_Location
		AND LAB.Component_ID=COMP.Component_ID
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_MATERIAL MAT
		ON Lab.Ref_Location=Mat.Ref_Location
		AND Lab.Material_ID=Mat.Material_ID
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_CONTAINER CONT
		ON Lab.Ref_Location=Cont.Ref_Location
		AND Lab.Container_ID=Cont.Container_ID;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_LegLimit_VW AS
	SELECT sensor.ref_location,sensor.tag_id,container_desc,trans_date,trans_hour
		,trans_min,trans_timestamp,tag_value AS "Lid_Height",Min_Op_Hgt as "Min_Height"
		,Max_Op_Hgt as "Max_Height"
		,CASE WHEN tag_value<Min_Op_Hgt THEN 1 ELSE 0 END AS "Violation"
	FROM TRNG_RefineryOptimizer.DB250092_RO_SENSOR_VW SENSOR
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_TAG_CONTAINER_XREF XREF
		ON sensor.ref_location=xref.ref_location
		AND sensor.tag_id=xref.tag_id
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_CONTAINER CONTAINER
		ON sensor.ref_location=container.ref_location
		AND xref.container_id=container.container_id;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Liftings_VW AS
	SELECT Lift.Ref_Location,BOL_Number,BOL_Line_Number,BOL_Version,BOL_Product,
	Lift.Material_ID,Material_Code,Material_Desc,BOL_Last_Modified_Date,
	BOL_Last_Modified_Time,Station,Order_ID,PO_Number,Contract_ID,Start_Date,
	Start_Time,Stop_Date,Stop_Time,Customer,Carrier,Destination,Driver,
	Lift.Container_ID,Container_Type,Transport_ID,Gross_Volume,Net_Volume,
	Volume_UOM
	FROM TRNG_RefineryOptimizer.DB250092_RO_LIFTINGS LIFT
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_MATERIAL MAT
		ON LIFT.Ref_Location=MAT.Ref_Location
		AND LIFT.Material_ID=MAT.Material_ID
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_CONTAINER CONT
		ON LIFT.Ref_Location=CONT.Ref_Location
		AND LIFT.Container_ID=CONT.Container_ID;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_MarketPrice_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_MARKETPRICE;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Material_Hier_Group_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_Material_Hier_Group;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Material_Hier_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_Material_Hier;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Material_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_Material;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Movements_VW AS
	SELECT move.Ref_Location,Movement_Type,Movement_Start_Date,Movement_Start_Time,
		Movement_Source_ID,cont1.Container_Type as Source_Container_Type,
		cont1.Container_Desc as Source_Container_Desc,
		Movement_Dest_ID,cont2.Container_Type as Dest_Container_Type,
		cont2.Container_Desc as Dest_Container_Desc,
		Movement_End_Date,Movement_End_Time,
		move.Material_ID,Material_Code,Material_Desc,Material_Cat1,Material_Cat2,
		Material_Cat3,Material_Cat4,Material_Cat5,Material_Cat6,
		Volume,Weight,Ticket_Number,
		Comments,move.Create_Dttm,move.Last_Update_Dttm 
	FROM TRNG_RefineryOptimizer.DB250092_RO_MOVEMENTS MOVE
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_MATERIAL MAT
		ON move.ref_location=mat.ref_location
		AND move.material_id=mat.material_id
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_MATERIAL_HIER MAT_HIER
		ON move.ref_location=mat_hier.ref_location
		AND move.material_id=mat_hier.material_id
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_CONTAINER CONT1
		ON move.ref_location=cont1.ref_location
		AND move.movement_source_id=cont1.container_id
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_CONTAINER CONT2
		ON move.ref_location=cont2.ref_location
		AND move.movement_dest_id=cont2.container_id;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_OptThruPut_Input_VW AS
	SELECT ref_location,unit_date,base.material,
		pricehigh_today AS PriceHigh_Today_USD,
		pricehigh_yesterday AS PriceHigh_Yesterday_USD,
		ideal_current AS Ideal_Current_BBL,
		plan_current AS Plan_Current_BBL,
		actual_current AS Actual_Current_BBL,
		ideal_yesterday AS Ideal_Yesterday_BBL,
		plan_yesterday AS Plan_Yesterday_BBL,
		actual_yesterday AS Actual_Yesterday_BBL,
		CAST(plan_current*pricehigh_today_usd AS DECIMAL(15,2)) AS Plan_Today_USD,
		CAST(actual_current*pricehigh_today_usd AS DECIMAL(15,2)) AS Actual_Today_USD,
		actual_today_usd-plan_today_usd AS ActualPlanDelta_USD,
		CAST((pricehigh_today_usd-pricehigh_yesterday_usd)/pricehigh_yesterday_usd*100 AS DECIMAL(15,2)) AS PriceDelta_Percent,
		CAST((CAST(actual_current_bbl AS DECIMAL(15,4))-actual_yesterday_bbl)/actual_yesterday_bbl*100 AS DECIMAL(15,2)) AS ActualDelta_Percent
		FROM
		(
		SELECT today.ref_location,today.unit_date,
			CASE today.unit_name
				WHEN 'PS3A' THEN 'Crude'
				WHEN 'PS3B' THEN 'Crude'
				WHEN 'DDU 100' THEN 'Diesel'
				WHEN 'DDU 200' THEN 'Diesel'
				WHEN 'DDU 300' THEN 'Diesel'
				WHEN 'FCU1' THEN 'Gasoline'
				WHEN 'FCU3' THEN 'Gasoline'
			END AS Material,
				SUM(today.ideal) AS "Ideal_Current",
				SUM(today.plan) AS "Plan_Current",
				SUM(today.actual) AS "Actual_Current",
				SUM(yesterday.ideal) AS "Ideal_Yesterday",
				SUM(yesterday.plan) AS "Plan_Yesterday",
				SUM(yesterday.actual) AS "Actual_Yesterday"
			FROM TRNG_RefineryOptimizer.DB250092_RO_Unit_VW AS TODAY
			LEFT OUTER JOIN
			(
			SELECT Ref_Location,Unit_Date,Unit_Name,Ideal,Plan,Actual
				FROM TRNG_RefineryOptimizer.DB250092_RO_Unit_VW BASE
			) YESTERDAY
			ON today.ref_location=yesterday.ref_location
			AND today.unit_date=yesterday.unit_date+1
			AND today.unit_name=yesterday.unit_name
			WHERE today.unit_name IN ('PS3A','PS3B','DDU 100','DDU 200','DDU 300','FCU1','FCU3')
			GROUP BY today.ref_location,today.unit_date,material
		) BASE
		LEFT OUTER JOIN
		(
		SELECT today.Price_Date,			
			CASE today.Price_Code
				WHEN 'AASOI00' THEN 'Crude'
				WHEN 'AATGW00' THEN 'Diesel'
				WHEN 'AAMHD00' THEN 'Gasoline'
			END AS Material,
				today.price_high AS PriceHigh_Today,
				yesterday.price_high AS PriceHigh_Yesterday
			FROM TRNG_RefineryOptimizer.DB250092_RO_Price_VW TODAY
			LEFT OUTER JOIN
			(
			SELECT Price_Date,
				price_code,				
				CASE Price_Code
					WHEN 'AASOI00' THEN 'Crude'
					WHEN 'AATGW00' THEN 'Diesel'
					WHEN 'AAMHD00' THEN 'Gasoline'
				END AS Material,
					Price_High
				FROM TRNG_RefineryOptimizer.DB250092_RO_Price_VW
			) YESTERDAY
			ON today.price_date=yesterday.price_date+1
			AND today.price_code=yesterday.price_code
			WHERE today.price_code IN ('AASOI00','AATGW00','AAMHD00')
		) PRICE
		ON base.unit_date=price_date
		AND base.material=price.material
		WHERE pricehigh_today IS NOT NULL;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_OptThruPut_Output_VW AS
	SELECT unit.Ref_Location,
		Price_Date,
		Price.Material,
		Ideal_Today_BBL,
		Plan_Today_BBL,
		Actual_Today_BBL,
		Ideal_Yesterday_BBL,
		Plan_Yesterday_BBL,
		Actual_Yesterday_BBL,
		PriceHigh_Today_USD,
		PriceHigh_Yesterday_USD,
		CAST(plan_today_bbl*pricehigh_today_usd AS DECIMAL(15,3)) AS Plan_Today_USD,
		CAST(actual_today_bbl*pricehigh_today_usd AS DECIMAL(15,3)) AS Actual_Today_USD,
		CAST((CAST(actual_today_bbl AS DECIMAL(15,5))-actual_yesterday_bbl)/actual_yesterday_bbl*100 AS DECIMAL(15,3)) AS ActualDelta_Percent,
		CAST(((pricehigh_today_usd_wt*pricehigh_today_usd) + (pricehigh_yesterday_usd_wt*pricehigh_yesterday_usd) + 
		(plan_today_usd_wt*plan_today_usd) + (actual_today_usd_wt*actual_today_usd) + (ActualDelta_Percent_WT*ActualDelta_Percent) + 
		Intercept) AS DECIMAL(15,3)) AS OptimalThroughput_BBL
		FROM
		(
		SELECT today.Price_Date,
			
			CASE today.Price_Code
				WHEN 'AASOI00' THEN 'Crude'
				WHEN 'AATGW00' THEN 'Diesel'
				WHEN 'AAMHD00' THEN 'Gasoline'
			END AS Material,
				today.price_high AS PriceHigh_Today_USD,
				PriceHigh_Yesterday_USD
			FROM TRNG_RefineryOptimizer.DB250092_RO_Price_VW TODAY
			LEFT OUTER JOIN
			(
			SELECT Price_Date,
				price_code,
				
				CASE Price_Code
					WHEN 'AASOI00' THEN 'Crude'
					WHEN 'AATGW00' THEN 'Diesel'
					WHEN 'AAMHD00' THEN 'Gasoline'
				END AS Material,
					Price_High AS PriceHigh_Yesterday_USD
				FROM TRNG_RefineryOptimizer.DB250092_RO_Price_VW
			) YESTERDAY
			ON today.price_date=yesterday.price_date+1
			AND today.price_code=yesterday.price_code
			INNER JOIN
			(
			SELECT MAX(Price_Date) AS Price_Date_Max
				FROM TRNG_RefineryOptimizer.DB250092_RO_Price_VW
				WHERE price_code IN ('AASOI00','AATGW00','AAMHD00')
			) PRICE_DATE
			--ON today.price_date = price_date.price_date_max
			ON today.price_date BETWEEN price_date.price_date_max-30 AND price_date.price_date_max
			WHERE today.price_code IN ('AASOI00','AATGW00','AAMHD00')
		) PRICE
		LEFT OUTER JOIN
		(
		SELECT today.ref_location,
			today.unit_date,
			
			CASE today.unit_name
				WHEN 'PS3A' THEN 'Crude'
				WHEN 'PS3B' THEN 'Crude'
				WHEN 'DDU 100' THEN 'Diesel'
				WHEN 'DDU 200' THEN 'Diesel'
				WHEN 'DDU 300' THEN 'Diesel'
				WHEN 'FCU1' THEN 'Gasoline'
				WHEN 'FCU3' THEN 'Gasoline'
			END AS Material,
				SUM(today.ideal) AS "Ideal_Today_BBL",
				SUM(today.plan) AS "Plan_Today_BBL",
				SUM(today.actual) AS "Actual_Today_BBL",
				SUM(yesterday.ideal) AS "Ideal_Yesterday_BBL",
				SUM(yesterday.plan) AS "Plan_Yesterday_BBL",
				SUM(yesterday.actual) AS "Actual_Yesterday_BBL"
			FROM TRNG_RefineryOptimizer.DB250092_RO_Unit_VW TODAY
			LEFT OUTER JOIN
			(
			SELECT Ref_Location,
				Unit_Date,
				Unit_Name,
				Ideal,
				Plan,
				Actual
				FROM TRNG_RefineryOptimizer.DB250092_RO_Unit_VW BASE
			) YESTERDAY
			ON today.ref_location=yesterday.ref_location
			AND today.unit_date=yesterday.unit_date+1
			AND today.unit_name=yesterday.unit_name
			WHERE today.unit_name IN ('PS3A','PS3B','DDU 100','DDU 200','DDU 300','FCU1','FCU3')
			GROUP BY today.ref_location,
				today.unit_date,
				material
		) UNIT
		ON price.material=unit.material
		AND price.price_date=unit.unit_date
		LEFT OUTER JOIN TRNG_RefineryOptimizer.DB250092_RO_OptThruPut_Weights_VW WEIGHTS
		ON unit.ref_location = weights.ref_location
		AND unit.material = weights.material;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_OptThruPut_Weights_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_OPTTHRUPUT_WEIGHTS;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Price_Crack_Stg_VW AS
	SELECT 'USEIA' AS Price_Source,'Crack' AS Price_Type,
		Gasoline_Date AS Price_Date,CAST('00:00:00' AS TIME(0)) AS Price_Time,
		'CRACK_GASOLINE' AS Price_Code,'Daily' AS Price_Freq,CAST('USGC' AS VARCHAR(10)) AS Price_Location,
		'U.S. Gulf Coast Conventional Gasoline Regular Spot Price FOB' AS Price_Description,
		Gasoline_Price AS Price_Close,'GAL' AS Price_UOM,'USA' AS Price_Country,'USD' AS Price_Currency
	FROM TRNG_RefineryOptimizer.DB250092_RO_PRICE_CRACK_STG
	WHERE Gasoline_Price is not null
	UNION ALL
	SELECT 'USEIA' AS Price_Source,'Crack' AS Price_Type,
		WTI_Date AS Price_Date,CAST('00:00:00' AS TIME(0)) AS Price_Time,
		'CRACK_WTI' AS Price_Code,'Daily' AS Price_Freq,'Cushing' AS Price_Location,
		'WTI Spot Price FOB' AS Price_Description,WTI_Price AS Price_Close,
		'BBL' AS Price_UOM,'USA' AS Price_Country,'USD' AS Price_Currency
	FROM TRNG_RefineryOptimizer.DB250092_RO_PRICE_CRACK_STG
	WHERE WTI_Price is not null
	UNION ALL
	SELECT 'USEIA' AS Price_Source,'Crack' AS Price_Type,
		Diesel_Date AS Price_Date,CAST('00:00:00' AS TIME(0)) AS Price_Time,
		'CRACK_DIESEL' AS Price_Code,'Daily' AS Price_Freq,'USGC' AS Price_Location,
		'U.S. Gulf Coast Ultra-Low Sulfur No 2 Diesel Spot Price' AS Price_Description,
		Diesel_Price AS Price_Close,'GAL' AS Price_UOM,'USA' AS Price_Country,'USD' AS Price_Currency
	FROM TRNG_RefineryOptimizer.DB250092_RO_PRICE_CRACK_STG
	WHERE Diesel_Price is not null;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Price_Futures_Stg_VW AS
	SELECT 'Nymex' AS Price_Source,'Futures' AS Price_Type,
		cast(concat(substring(price_date from 7 for 4),'-',
			substring(price_date from 1 for 2),'-',
			substring(price_date from 4 for 2)) as DATE) as Price_Date,
		cast('00:00:00' as TIME(0)) AS Price_Time,
		--concat(Price_Type,'_',Price_FutureMonth,Price_FutureYear) as Price_Code,
		concat(Price_Type,'_','20',Price_FutureYear,FutureMonth_Num,'01') as Price_Code,
		'N/A' as Price_Freq,
		CASE Price_Type
			WHEN 'CL' Then 'Crude'
			WHEN 'HU' Then 'Unleaded'
			WHEN 'HO' Then 'Heating Oil'
			WHEN 'NG' Then 'Natural Gas'
			WHEN 'PN' Then 'Propane'
			WHEN 'RB' Then 'Gasoline'
		END as Product,
		CASE Price_Type
			WHEN 'CL' Then 'USD/BBL'
			WHEN 'HU' Then 'USD/GAL'
--			WHEN 'HO' Then 'Heating Oil'
			WHEN 'NG' Then 'USD/MBTU'
			WHEN 'PN' Then 'USD/MBTU'
			WHEN 'RB' Then 'USD/GAL'
		END as Price_UOM,
		CASE Price_FutureMonth
			WHEN 'F' Then 'January'
			WHEN 'G' Then 'February'
			WHEN 'H' Then 'March'
			WHEN 'J' Then 'April'
			WHEN 'K' Then 'May'
			WHEN 'M' Then 'June'
			WHEN 'N' Then 'July'
			WHEN 'Q' Then 'August'
			WHEN 'U' Then 'September'
			WHEN 'V' Then 'October'
			WHEN 'X' Then 'November'
			WHEN 'Z' Then 'December'
		END as FutureMonth,
		CASE Price_FutureMonth
			WHEN 'F' Then '01'
			WHEN 'G' Then '02'
			WHEN 'H' Then '03'
			WHEN 'J' Then '04'
			WHEN 'K' Then '05'
			WHEN 'M' Then '06'
			WHEN 'N' Then '07'
			WHEN 'Q' Then '08'
			WHEN 'U' Then '09'
			WHEN 'V' Then '10'
			WHEN 'X' Then '11'
			WHEN 'Z' Then '12'
		END as FutureMonth_Num,
		concat(product,' Futures for ',FutureMonth,' 20',price_futureyear) as Price_Description,
		price_open,price_low,price_high,price_close,price_volume
	FROM TRNG_RefineryOptimizer.DB250092_RO_price_futures_stg;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Price_Opisfeed_Stg_VW AS
SELECT 'Opis' AS Price_Source,'Feedstock' AS Price_Type,
	CAST(TO_DATE(Price_Date,'MM/DD/YYYY') AS DATE) AS Price_Date,
	CAST('00:00:00' AS TIME(0)) AS Price_Time,
	Price_Description AS Price_Code,
	CASE Price_Freq
		WHEN 'D' THEN 'Daily'
		WHEN 'W' THEN 'Weekly'
		WHEN 'M' THEN 'Monthly'
		WHEN 'Y' THEN 'Yearly'
	END as Price_Freq,
	substr(Price_Description,1,(INDEX(Price_Description,' ')-1)) AS Price_Location,
	Price_Description,Price_Low,Price_High, Price_Avg,
	Price_UOM,Price_Country,
	Case Price_DeliveryType
		WHEN 'T' THEN 'Truck'
		WHEN 'P' THEN 'Pipeline'
		WHEN 'B' THEN 'Barge'
		WHEN 'S' THEN 'Ship'
	END AS Price_DeliveryType,
	'USD' AS Price_Currency
FROM TRNG_RefineryOptimizer.DB250092_RO_PRICE_OPISFEED_STG;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Price_OpisSpot_Stg_VW AS
SELECT 'Opis' AS Price_Source,'Spot' AS Price_Type,
	CAST(TO_DATE(Price_Date,'MM/DD/YYYY') AS DATE) AS Price_Date,
	CAST('00:00:00' AS TIME(0)) AS Price_Time,
	Price_Description AS Price_Code,
	CASE Price_Freq
		WHEN 'D' THEN 'Daily'
		WHEN 'W' THEN 'Weekly'
		WHEN 'M' THEN 'Monthly'
		WHEN 'Y' THEN 'Yearly'
	END as Price_Freq,
	substr(Price_Description,1,(INDEX(Price_Description,' ')-1)) AS Price_Location,
	Price_Description,
	Price_Low,Price_High, Price_Avg,Price_Close,
	Price_UOM,Price_Country,
	Case Price_DeliveryType
		WHEN 'T' THEN 'Truck'
		WHEN 'P' THEN 'Pipeline'
		WHEN 'B' THEN 'Barge'
		WHEN 'S' THEN 'Ship'
	END AS Price_DeliveryType,
	'USD' AS Price_Currency
FROM TRNG_RefineryOptimizer.DB250092_RO_PRICE_OPISSPOT_STG;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Price_Platts_Stg_VW AS
	SELECT 'Platts' AS Price_Source, Price_MDC AS Price_Type,
		--Price_Date,
		CAST('2010-01-01' AS DATE) AS Price_Date,
		Price_Time,Price_Code,Price_Freq,Price_Location,Price_Description,
		max(Price_Low) AS Price_Low,max(Price_High) AS Price_High,
		NULL AS Price_Avg,max(Price_Close) AS Price_Close,max(Price_Index) as Price_Index,
		max(Price_Volume) as Price_Volume,Price_UOM, NULL AS Price_Country,
		Price_Group AS Price_DeliveryType,Price_Currency
	FROM
		(
		SELECT price_col1,price_mdc,DCD.price_code,price_freq,price_currency,price_uom,
			price_description,price_location,price_group,price_date,price_time,
			CASE Price_Type
				WHEN 'l' THEN Price
			END AS Price_Low,
			CASE Price_Type
				WHEN 'h' THEN Price
			END AS Price_High,
			CASE Price_Type
				WHEN 'c' THEN Price
			END AS Price_Close,
			CASE Price_Type
				WHEN 'v' THEN Price
			END AS Price_Volume,
			CASE Price_Type
				WHEN 'u' THEN Price
			END AS Price_Index
		FROM TRNG_RefineryOptimizer.DB250092_RO_PRICE_PLATTS_DCD DCD
		INNER JOIN
			(
			SELECT price_col1,substring(price_code from 1 for 7) as Price_Code,
				substring(price_code from 8 for 1) as Price_Type,price,
				CAST(CONCAT(substring(Price_DateTime from 1 for 4),'-',
					substring(Price_DateTime from 5 for 2),'-',
					substring(Price_DateTime from 7 for 2)) AS DATE) AS Price_Date,
				CAST(CONCAT(substring(Price_DateTime from 9 for 2),':',
					substring(Price_DateTime from 11 for 2),':00') AS TIME(0)) AS Price_Time
			FROM TRNG_RefineryOptimizer.DB250092_RO_PRICE_PLATTS_STG
			) STG
		ON DCD.Price_Code=STG.Price_Code
		) TEMP
	WHERE price_col1='N'
	GROUP BY price_mdc,price_code,price_freq,price_currency,price_uom,
		price_description,price_location,price_group,price_date,price_time,price_col1;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Price_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_PRICE;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Production_VW AS
	SELECT ref_location,
		production_date,
		MAX(Feedstock_Inv_End) AS Feed_Inv_End,
		MAX(Feedstock_Inv_Begin) AS Feed_Inv_Begin,
		MAX(Feedstock_Receipts) AS Feed_Receipts,
		MAX(Feedstock_Shipments) AS Feed_Shipments,
		MAX(Feedstock_Production) AS Feed_Production,
		MAX(Product_Inv_End) AS Prod_Inv_End,
		MAX(Product_Inv_Begin) AS Prod_Inv_Begin,
		MAX(Product_Receipts) AS Prod_Receipts,
		MAX(Product_Shipments) AS Prod_Shipments,
		MAX(Product_Production) AS Prod_Production
		FROM
		(
		SELECT ref_location,
			production_date,
			
			CASE material_cat1
				WHEN 'Feedstocks' THEN Inv_End
			END AS Feedstock_Inv_End,
				
			CASE material_cat1
				WHEN 'Feedstocks' THEN Inv_Begin
			END AS Feedstock_Inv_Begin,
				
			CASE material_cat1
				WHEN 'Feedstocks' THEN Rec
			END AS Feedstock_Receipts,
				
			CASE material_cat1
				WHEN 'Feedstocks' THEN Ship
			END AS Feedstock_Shipments,
				
			CASE material_cat1
				WHEN 'Feedstocks' THEN Production
			END AS Feedstock_Production,
				
			CASE material_cat1
				WHEN 'Products' THEN Inv_End
			END AS Product_Inv_End,
				
			CASE material_cat1
				WHEN 'Products' THEN Inv_Begin
			END AS Product_Inv_Begin,
				
			CASE material_cat1
				WHEN 'Products' THEN Rec
			END AS Product_Receipts,
				
			CASE material_cat1
				WHEN 'Products' THEN Ship
			END AS Product_Shipments,
				
			CASE material_cat1
				WHEN 'Products' THEN Production
			END AS Product_Production
			FROM
			(
			SELECT ref_location,
				inventory_date AS Production_Date,
				ZEROIFNULL(Inventory_End) AS Inv_End,
				ZEROIFNULL(Inventory_Begin) AS Inv_Begin,
				ZEROIFNULL(Receipts) AS Rec,
				ZEROIFNULL(Shipments) AS Ship,
				material_cat1,
				Inv_Begin-Inv_End+Rec-Ship AS Production
				FROM
				(
				SELECT INV_BEG.ref_location,
					INV_BEG.inventory_date,
					material_cat1,
					CAST(SUM(net_qty_bbl) AS INTEGER) AS Inventory_End,
					MAX(Inventory_Begin) AS Inventory_Begin,
					MAX(Receipts) AS Receipts,
					MAX(Shipments) AS Shipments
					FROM TRNG_RefineryOptimizer.DB250092_RO_INVENTORY_VW AS INV_BEG
					INNER JOIN
					(
					SELECT ref_location,
						inventory_date,
						CAST(SUM(net_qty_bbl) AS INTEGER) AS Inventory_Begin
						FROM TRNG_RefineryOptimizer.DB250092_RO_INVENTORY_VW
						WHERE material_cat1 IN ('Feedstocks')
						GROUP BY ref_location,
							inventory_date) AS INV_END
					ON INV_END.ref_location=INV_BEG.ref_location
					AND INV_END.inventory_date-1=INV_BEG.inventory_date
					LEFT OUTER JOIN
					(
					SELECT ref_location,
						movement_start_date,
						CAST(SUM(volume) AS INTEGER) AS Receipts
						FROM TRNG_RefineryOptimizer.DB250092_RO_Movements_VW
						WHERE movement_type='Receipt'
							AND  material_cat1 = 'Feedstocks'
						GROUP BY ref_location,
							movement_start_date) AS REC
					ON INV_END.ref_location=REC.ref_location
					AND INV_END.inventory_date=REC.movement_start_date
					LEFT OUTER JOIN
					(
					SELECT ref_location,
						movement_start_date,
						CAST(SUM(volume) AS INTEGER) AS Shipments
						FROM TRNG_RefineryOptimizer.DB250092_RO_Movements_VW
						WHERE movement_type='Shipment'
							AND  material_cat1 = 'Feedstocks'
						GROUP BY ref_location,
							movement_start_date) AS SHIP
					ON INV_END.ref_location=SHIP.ref_location
					AND INV_END.inventory_date=SHIP.movement_start_date
					INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_Material_Hier_Group_VW MHG
					ON INV_END.Ref_Location=MHG.Ref_Location
					WHERE material_cat1 IN ('Feedstocks')
						AND  Material_Hier_Group='Refineries'
					GROUP BY INV_BEG.ref_location,
						INV_BEG.inventory_date,
						INV_BEG.material_cat1
				) AS FEEDSTOCKS
			UNION ALL
			SELECT ref_location,
				inventory_date AS Production_Date,
				ZEROIFNULL(Inventory_End) AS Inv_End,
				ZEROIFNULL(Inventory_Begin) AS Inv_Begin,
				ZEROIFNULL(Receipts) AS Rec,
				ZEROIFNULL(Shipments) AS Ship,
				material_cat1,
				Inv_End-Inv_Begin-Rec+Ship AS Production
				FROM
				(
				SELECT INV_BEG.ref_location,
					INV_BEG.inventory_date,
					material_cat1,
					CAST(SUM(net_qty_bbl) AS INTEGER) AS Inventory_End,
					MAX(Inventory_Begin) AS Inventory_Begin,
					MAX(Receipts) AS Receipts,
					MAX(Shipments) AS Shipments
					FROM TRNG_RefineryOptimizer.DB250092_RO_INVENTORY_VW AS INV_BEG
					INNER JOIN
					(
					SELECT ref_location,
						inventory_date,
						CAST(SUM(net_qty_bbl) AS INTEGER) AS Inventory_Begin
						FROM TRNG_RefineryOptimizer.DB250092_RO_INVENTORY_VW
						WHERE material_cat1 IN ('Products')
						GROUP BY ref_location,
							inventory_date) AS INV_END
					ON INV_END.ref_location=INV_BEG.ref_location
					AND INV_END.inventory_date-1=INV_BEG.inventory_date
					LEFT OUTER JOIN
					(
					SELECT ref_location,
						movement_start_date,
						CAST(SUM(volume) AS INTEGER) AS Receipts
						FROM TRNG_RefineryOptimizer.DB250092_RO_Movements_VW
						WHERE movement_type='Receipt'
							AND  material_cat1 = 'Products'
						GROUP BY ref_location,
							movement_start_date) AS REC
					ON INV_END.ref_location=REC.ref_location
					AND INV_END.inventory_date=REC.movement_start_date
					LEFT OUTER JOIN
					(
					SELECT ref_location,
						movement_start_date,
						CAST(SUM(volume) AS INTEGER) AS Shipments
						FROM TRNG_RefineryOptimizer.DB250092_RO_Movements_VW
						WHERE movement_type='Shipment'
							AND  material_cat1 = 'Products'
						GROUP BY ref_location,
							movement_start_date) AS SHIP
					ON INV_END.ref_location=SHIP.ref_location
					AND INV_END.inventory_date=SHIP.movement_start_date
					INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_Material_Hier_Group_VW MHG
					ON INV_END.Ref_Location=MHG.Ref_Location
					WHERE material_cat1 IN ('Products')
						AND  Material_Hier_Group='Refineries'
					GROUP BY INV_BEG.ref_location,
						INV_BEG.inventory_date,
						INV_BEG.material_cat1
				) AS PRODUCTS
			) AS TEMP
		) AS MAIN
		GROUP BY ref_location,
			production_date;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Safety_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_SAFETY;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Sensor_DescUnits_VW AS
	SELECT * FROM TRNG_RefineryOptimizer.DB250092_RO_Sensor_DescUnits;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Sensor_VW AS
	SELECT DB250092_RO_Sensor.Ref_Location,Trans_Date,Trans_Hour,Trans_Min,Trans_Sec 
		,DB250092_RO_Sensor.Trans_Timestamp,DB250092_RO_Sensor.Tag_ID,Tag_Desc
		,Tag_Units, Tag_Value 
	FROM TRNG_RefineryOptimizer.DB250092_RO_Sensor
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_Sensor_DescUnits
		ON DB250092_RO_Sensor.Ref_Location = DB250092_RO_Sensor_DescUnits.Ref_Location
 		AND DB250092_RO_Sensor.Tag_Id = DB250092_RO_Sensor_DescUnits.Tag_Id;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_UnitCost_VW AS
	SELECT Rate.Ref_Location,Price_Date,CrudeRate,Cost,(Price_Gasoline*2)+(Price_Diesel)-(Price_WTI*3) AS Crack_Spread,
		CrudeRate_Plan,Cost_Plan,(Price_Gasoline_Future*2)+(Price_Diesel_Future)-(Price_WTI_Future*3) AS Crack_Spread_Future,
		Price_Gasoline,Price_Diesel,Price_WTI,
		max(Price_Gasoline) OVER (ORDER BY Price_Date ROWS BETWEEN 1 FOLLOWING and 1 FOLLOWING) AS Price_Gasoline_Future,
		max(Price_Diesel) OVER (ORDER BY Price_Date ROWS BETWEEN 1 FOLLOWING and 1 FOLLOWING) AS Price_Diesel_Future,
		max(Price_WTI) OVER (ORDER BY Price_Date ROWS BETWEEN 1 FOLLOWING and 1 FOLLOWING) AS Price_WTI_Future
	FROM
	(
		SELECT Price_Date,cast(max(Price_WTI) as Decimal(10,2)) AS Price_WTI,
			max(Price_Gasoline)*42 AS Price_Gasoline,
			max(Price_Diesel)*42 AS Price_Diesel
		FROM
			(
			SELECT Price_Date,
				CASE Price_Code
					WHEN 'CRACK_WTI' THEN Price_Close
				END AS Price_WTI,
				CASE Price_Code
					WHEN 'CRACK_GASOLINE' THEN Price_Close
				END AS Price_Gasoline,
				CASE Price_Code
					WHEN 'CRACK_Diesel' THEN Price_Close
				END AS Price_Diesel
			FROM TRNG_RefineryOptimizer.DB250092_RO_PRICE_VW
			WHERE Price_Type = 'Crack'
				AND Price_Close is not null
			) TEMP
		GROUP BY Price_Date
	) CRACK
	INNER JOIN
		(
		SELECT Ref_Location,Unit_Date,
		max(PS3A_Actual)+max(PS3B_Actual) AS CrudeRate,
		max(PS3A_Plan)+max(PS3B_Plan) AS CrudeRate_Plan
		FROM
			(
			SELECT Ref_Location,Unit_Date,Unit_Name,
				CASE Unit_Name
					WHEN 'PS3A' THEN Actual
				END AS "PS3A_Actual",
				CASE Unit_Name
					WHEN 'PS3B' THEN Actual
				END AS "PS3B_Actual",
				CASE Unit_Name
					WHEN 'PS3A' THEN Plan
				END AS "PS3A_Plan",
				CASE Unit_Name
					WHEN 'PS3B' THEN Plan
				END AS "PS3B_Plan"
			FROM TRNG_RefineryOptimizer.DB250092_RO_UNIT_VW
			WHERE Unit_Name in ('PS3A','PS3B')
			) TEMP
		GROUP BY Ref_Location,Unit_Date
		) RATE
	ON Crack.Price_Date=Rate.Unit_Date
	INNER JOIN
		(
		SELECT Ref_Location,Cost_Date,
			sum(Cost_Value_Daily) AS Cost,
			sum(Cost_Value_Plan) AS Cost_Plan
		FROM
			(
			SELECT Ref_Location,Cost_Date,
			CASE Cost_PlanAct
				WHEN 'Actual' THEN Cost_Value
			END as Cost_Value_Daily,
			CASE Cost_PlanAct
				WHEN 'Plan' THEN Cost_Value
			END as Cost_Value_Plan
			FROM TRNG_RefineryOptimizer.DB250092_RO_COST
			) TEMP
		GROUP BY Ref_Location,Cost_Date) COST
	ON Rate.Unit_Date=Cost.Cost_Date
		AND Rate.Ref_Location=Cost.Ref_Location;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_UnitOps_VW AS
SELECT ref_location,unit_date,unit_name,material_desc,ideal,plan,actual,unit_rateuom,sample_id
	,max(Arom) as Arom,max(Arom_Units) as Arom_Units,max(Arom_Min) as Arom_Min,max(Arom_Max) as Arom_Max
	,max(Copper) as Copper,max(Copper_Units) as Copper_Units,max(Copper_Min) as Copper_Min,max(Copper_Max) as Copper_Max
	,max(Frac90) as Frac90,max(Frac90_Units) as Frac90_Units,max(Frac90_Min) as Frac90_Min,max(Frac90_Max) as Frac90_Max
	,max(Flash) as Flash,max(Flash_Units) as Flash_Units,max(Flash_Min) as Flash_Min,max(Flash_Max) as Flash_Max
	,max(Cloud) as Cloud,max(Cloud_Units) as Cloud_Units,max(Cloud_Min) as Cloud_Min,max(Cloud_Max) as Cloud_Max
	,max(WaterSed) as WaterSed,max(WaterSed_Units) as WaterSed_Units,max(WaterSed_Min) as WaterSed_Min,max(WaterSed_Max) as WaterSed_Max
	,max(Visc) as Visc,max(Visc_Units) as Visc_Units,max(Visc_Min) as Visc_Min,max(Visc_Max) as Visc_Max
	,max(Ash) as Ash,max(Ash_Units) as Ash_Units,max(Ash_Min) as Ash_Min,max(Ash_Max) as Ash_Max
	,max(Sulfur) as Sulfur,max(Sulfur_Units) as Sulfur_Units,max(Sulfur_Min) as Sulfur_Min,max(Sulfur_Max) as Sulfur_Max
	,max(CetaneNumb) as CetaneNumb,max(CetaneNumb_Units) as CetaneNumb_Units,max(CetaneNumb_Min) as CetaneNumb_Min,max(CetaneNumb_Max) as CetaneNumb_Max
	,max(CetaneIndx) as CetaneIndx,max(CetaneIndx_Units) as CetaneIndx_Units,max(CetaneIndx_Min) as CetaneIndx_Min,max(CetaneIndx_Max) as CetaneIndx_Max
	,max(Carbon) as Carbon,max(Carbon_Units) as Carbon_Units,max(Carbon_Min) as Carbon_Min,max(Carbon_Max) as Carbon_Max
	,max(Lubricity) as Lubricity,max(Lubricity_Units) as Lubricity_Units,max(Lubricity_Min) as Lubricity_Min,max(Lubricity_Max) as Lubricity_Max
	,max(Cond) as Cond,max(Cond_Units) as Cond_Units,max(Cond_Min) as Cond_Min,max(Cond_Max) as Cond_Max
FROM
	(
	SELECT UNIT.ref_location,unit_date,unit_name,material_desc
		,ideal,plan,actual,Unit_RateUOM,LAB.sample_id,LAB.component_id
		,component_desc,component_units,result_value,result_minspec,result_maxspec
		,CASE WHEN LAB.Component_ID=19 THEN Result_Value END AS Arom
		,CASE WHEN LAB.Component_ID=19 THEN Component_Units END AS Arom_Units
		,CASE WHEN LAB.Component_ID=19 THEN Result_MinSpec END AS Arom_Min
		,CASE WHEN LAB.Component_ID=19 THEN Result_MaxSpec END AS Arom_Max
		,CASE WHEN LAB.Component_ID=26 THEN Result_Value END AS Copper
		,CASE WHEN LAB.Component_ID=26 THEN Component_Units END AS Copper_Units
		,CASE WHEN LAB.Component_ID=26 THEN Result_MinSpec END AS Copper_Min
		,CASE WHEN LAB.Component_ID=26 THEN Result_MaxSpec END AS Copper_Max
		,CASE WHEN LAB.Component_ID=60 THEN Result_Value END AS Frac90
		,CASE WHEN LAB.Component_ID=60 THEN Component_Units END AS Frac90_Units
		,CASE WHEN LAB.Component_ID=60 THEN Result_MinSpec END AS Frac90_Min
		,CASE WHEN LAB.Component_ID=60 THEN Result_MaxSpec END AS Frac90_Max
		,CASE WHEN LAB.Component_ID=96 THEN Result_Value END AS Flash
		,CASE WHEN LAB.Component_ID=96 THEN Component_Units END AS Flash_Units
		,CASE WHEN LAB.Component_ID=96 THEN Result_MinSpec END AS Flash_Min
		,CASE WHEN LAB.Component_ID=96 THEN Result_MaxSpec END AS Flash_Max
		,CASE WHEN LAB.Component_ID=97 THEN Result_Value END AS Cloud
		,CASE WHEN LAB.Component_ID=97 THEN Component_Units END AS Cloud_Units
		,CASE WHEN LAB.Component_ID=97 THEN Result_MinSpec END AS Cloud_Min
		,CASE WHEN LAB.Component_ID=97 THEN Result_MaxSpec END AS Cloud_Max
		,CASE WHEN LAB.Component_ID=98 THEN Result_Value END AS WaterSed
		,CASE WHEN LAB.Component_ID=98 THEN Component_Units END AS WaterSed_Units
		,CASE WHEN LAB.Component_ID=98 THEN Result_MinSpec END AS WaterSed_Min
		,CASE WHEN LAB.Component_ID=98 THEN Result_MaxSpec END AS WaterSed_Max
		,CASE WHEN LAB.Component_ID=99 THEN Result_Value END AS Visc
		,CASE WHEN LAB.Component_ID=99 THEN Component_Units END AS Visc_Units
		,CASE WHEN LAB.Component_ID=99 THEN Result_MinSpec END AS Visc_Min
		,CASE WHEN LAB.Component_ID=99 THEN Result_MaxSpec END AS Visc_Max
		,CASE WHEN LAB.Component_ID=100 THEN Result_Value END AS Ash
		,CASE WHEN LAB.Component_ID=100 THEN Component_Units END AS Ash_Units
		,CASE WHEN LAB.Component_ID=100 THEN Result_MinSpec END AS Ash_Min
		,CASE WHEN LAB.Component_ID=100 THEN Result_MaxSpec END AS Ash_Max
		,CASE WHEN LAB.Component_ID=101 THEN Result_Value END AS Sulfur
		,CASE WHEN LAB.Component_ID=101 THEN Component_Units END AS Sulfur_Units
		,CASE WHEN LAB.Component_ID=101 THEN Result_MinSpec END AS Sulfur_Min
		,CASE WHEN LAB.Component_ID=101 THEN Result_MaxSpec END AS Sulfur_Max
		,CASE WHEN LAB.Component_ID=102 THEN Result_Value END AS CetaneNumb
		,CASE WHEN LAB.Component_ID=102 THEN Component_Units END AS CetaneNumb_Units
		,CASE WHEN LAB.Component_ID=102 THEN Result_MinSpec END AS CetaneNumb_Min
		,CASE WHEN LAB.Component_ID=102 THEN Result_MaxSpec END AS CetaneNumb_Max
		,CASE WHEN LAB.Component_ID=103 THEN Result_Value END AS CetaneIndx
		,CASE WHEN LAB.Component_ID=103 THEN Component_Units END AS CetaneIndx_Units
		,CASE WHEN LAB.Component_ID=103 THEN Result_MinSpec END AS CetaneIndx_Min
		,CASE WHEN LAB.Component_ID=103 THEN Result_MaxSpec END AS CetaneIndx_Max
		,CASE WHEN LAB.Component_ID=104 THEN Result_Value END AS Carbon
		,CASE WHEN LAB.Component_ID=104 THEN Component_Units END AS Carbon_Units
		,CASE WHEN LAB.Component_ID=104 THEN Result_MinSpec END AS Carbon_Min
		,CASE WHEN LAB.Component_ID=104 THEN Result_MaxSpec END AS Carbon_Max
		,CASE WHEN LAB.Component_ID=105 THEN Result_Value END AS Lubricity
		,CASE WHEN LAB.Component_ID=105 THEN Component_Units END AS Lubricity_Units
		,CASE WHEN LAB.Component_ID=105 THEN Result_MinSpec END AS Lubricity_Min
		,CASE WHEN LAB.Component_ID=105 THEN Result_MaxSpec END AS Lubricity_Max
		,CASE WHEN LAB.Component_ID=106 THEN Result_Value END AS Cond
		,CASE WHEN LAB.Component_ID=106 THEN Component_Units END AS Cond_Units
		,CASE WHEN LAB.Component_ID=106 THEN Result_MinSpec END AS Cond_Min
		,CASE WHEN LAB.Component_ID=106 THEN Result_MaxSpec END AS Cond_Max
	FROM TRNG_RefineryOptimizer.DB250092_RO_Unit_VW UNIT
	INNER JOIN TRNG_RefineryOptimizer.DB250092_RO_Lab_VW LAB
		ON Unit.Ref_Location=LAB.Ref_Location
		AND Unit.Unit_Date=LAB.Sample_Date
		AND Unit.Unit_Name=LAB.Sample_Point
	INNER JOIN
		(
		SELECT Ref_Location,Sample_Date,Sample_Point,Sample_ID,Component_ID,Max(Test_Rep) as Test_Rep_Max
		FROM TRNG_RefineryOptimizer.DB250092_RO_Lab_VW LAB
		GROUP BY Ref_Location,Sample_Date,Sample_Point,Sample_ID,Component_ID
		) AS LAB_TESTREP_MAX
		ON LAB.Ref_Location=LAB_TESTREP_MAX.Ref_Location
		AND LAB.Sample_Date=LAB_TESTREP_MAX.Sample_Date
		AND LAB.Sample_ID=LAB_TESTREP_MAX.Sample_ID
		AND LAB.Sample_Point=LAB_TESTREP_MAX.Sample_Point
		AND LAB.Component_ID=LAB_TESTREP_MAX.Component_ID
		AND LAB.Test_Rep=LAB_TESTREP_MAX.Test_Rep_Max
	) TEMP
--where Unit.ref_location='El Paso Refinery'
--and Unit_Date='2010-01-01'
--order by ref_location,unit_date,unit_name
GROUP BY ref_location,unit_date,unit_name,material_desc,ideal,plan,actual,unit_rateuom,sample_id;

REPLACE VIEW TRNG_RefineryOptimizer.DB250092_RO_Unit_VW AS
	SELECT Ref_Location,
		Unit_Date,
		Unit_Time,
		Unit_Name,
		MAX(Ideal1) AS "Ideal",
		MAX(Plan1) AS "Plan",
		MAX(Actual1) AS "Actual",
		Unit_RateUOM,
		Actual/Ideal as "Utilization"
		FROM
		(
		SELECT Ref_Location,
			Unit_Date,
			Unit_Time,
			Unit_Name,
			
			CASE Unit_RateType
				WHEN 'Ideal' THEN Unit_RateValue
			END AS "Ideal1",
				
			CASE Unit_RateType
				WHEN 'Plan' THEN Unit_RateValue
			END AS "Plan1",
				
			CASE Unit_RateType
				WHEN 'Actual' THEN Unit_RateValue
			END AS "Actual1",
				Unit_RateUOM
			FROM "TRNG_RefineryOptimizer"."DB250092_RO_UNIT"
		) Temp
		GROUP BY Ref_Location,
			Unit_Date,
			Unit_Time,
			Unit_Name,
			Unit_RateUOM;

CREATE JOIN INDEX TRNG_RefineryOptimizer.DB250092_SENSOR_AJI ,FALLBACK ,CHECKSUM = DEFAULT, MAP = TD_MAP1 AS 
SELECT COUNT(*)(FLOAT, NAMED CountStar ),TRNG_RefineryOptimizer.DB250092_RO_Sensor.Ref_Location ,
TRNG_RefineryOptimizer.DB250092_RO_Sensor.Tag_ID ,TRNG_RefineryOptimizer.DB250092_RO_Sensor.Trans_Date ,
TRNG_RefineryOptimizer.DB250092_RO_Sensor.Trans_Hour ,SUM(TRNG_RefineryOptimizer.DB250092_RO_Sensor.Tag_Value )(DECIMAL(38,4), NAMED tag_value ),
COUNT(TRNG_RefineryOptimizer.DB250092_RO_Sensor.Tag_Value )(FLOAT, NAMED tag_cnt )
 FROM TRNG_RefineryOptimizer.DB250092_RO_Sensor 
GROUP BY TRNG_RefineryOptimizer.DB250092_RO_Sensor.Ref_Location ,
TRNG_RefineryOptimizer.DB250092_RO_Sensor.Tag_ID ,TRNG_RefineryOptimizer.DB250092_RO_Sensor.Trans_Date ,
TRNG_RefineryOptimizer.DB250092_RO_Sensor.Trans_Hour 
PRIMARY INDEX ( Ref_Location ,Tag_ID ,Trans_Date ,Trans_Hour )
PARTITION BY RANGE_N(TRNG_RefineryOptimizer.DB250092_RO_Sensor.Trans_Date  BETWEEN 
'1990-01-01' AND '2040-12-31' EACH INTERVAL '1' DAY ,
 NO RANGE);

REPLACE PROCEDURE TRNG_RefineryOptimizer.DB250092_MERGE_SENSOR_STG_TO_SENSOR()
	BEGIN

	MERGE INTO TRNG_RefineryOptimizer.Db250092_RO_SENSOR CORE
	USING (
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag1_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag1_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag1_Value > 999999999 THEN NULL
				WHEN Tag1_Value < -999999999 THEN NULL
				WHEN Tag1_Value = '' THEN NULL
				ELSE STG.Tag1_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag1_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag1_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag1_Id IS NOT NULL
			AND STG.Tag1_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag2_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag1_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag2_Value > 999999999 THEN NULL
				WHEN Tag2_Value < -999999999 THEN NULL
				WHEN Tag2_Value = '' THEN NULL
				ELSE STG.Tag2_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag2_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag2_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag2_Id IS NOT NULL
			AND STG.Tag2_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag3_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag3_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag3_Value > 999999999 THEN NULL
				WHEN Tag3_Value < -999999999 THEN NULL
				WHEN Tag3_Value = '' THEN NULL
				ELSE STG.Tag3_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag3_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag3_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag3_Id IS NOT NULL
			AND STG.Tag3_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag4_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag4_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag4_Value > 999999999 THEN NULL
				WHEN Tag4_Value < -999999999 THEN NULL
				WHEN Tag4_Value = '' THEN NULL				
				ELSE STG.Tag4_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag4_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag4_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag4_Id IS NOT NULL
			AND STG.Tag4_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag5_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag5_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag5_Value > 999999999 THEN NULL
				WHEN Tag5_Value < -999999999 THEN NULL
				WHEN Tag5_Value = '' THEN NULL				
				ELSE STG.Tag5_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag5_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag5_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag5_Id IS NOT NULL
			AND STG.Tag5_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag6_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag6_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag6_Value > 999999999 THEN NULL
				WHEN Tag6_Value < -999999999 THEN NULL
				WHEN Tag6_Value = '' THEN NULL				
				ELSE STG.Tag6_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag6_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag6_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag6_Id IS NOT NULL
			AND STG.Tag6_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag7_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag7_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag7_Value > 999999999 THEN NULL
				WHEN Tag7_Value < -999999999 THEN NULL
				WHEN Tag7_Value = '' THEN NULL				
				ELSE STG.Tag7_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag7_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag7_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag7_Id IS NOT NULL
			AND STG.Tag7_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag8_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag8_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag8_Value > 999999999 THEN NULL
				WHEN Tag8_Value < -999999999 THEN NULL
				WHEN Tag8_Value = '' THEN NULL				
				ELSE STG.Tag8_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag8_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag8_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag8_Id IS NOT NULL
			AND STG.Tag8_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag9_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag9_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag9_Value > 999999999 THEN NULL
				WHEN Tag9_Value < -999999999 THEN NULL
				WHEN Tag9_Value = '' THEN NULL				
				ELSE STG.Tag9_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag9_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag9_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag9_Id IS NOT NULL
			AND STG.Tag9_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag10_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag10_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag10_Value > 999999999 THEN NULL
				WHEN Tag10_Value < -999999999 THEN NULL
				WHEN Tag10_Value = '' THEN NULL				
				ELSE STG.Tag10_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag10_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag10_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag10_Id IS NOT NULL
			AND STG.Tag10_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag11_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag11_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag11_Value > 999999999 THEN NULL
				WHEN Tag11_Value < -999999999 THEN NULL
				WHEN Tag11_Value = '' THEN NULL				
				ELSE STG.Tag11_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag11_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag11_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag11_Id IS NOT NULL
			AND STG.Tag11_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag12_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag11_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag12_Value > 999999999 THEN NULL
				WHEN Tag12_Value < -999999999 THEN NULL
				WHEN Tag12_Value = '' THEN NULL				
				ELSE STG.Tag12_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag12_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag12_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag12_Id IS NOT NULL
			AND STG.Tag12_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag13_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag13_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag13_Value > 999999999 THEN NULL
				WHEN Tag13_Value < -999999999 THEN NULL
				WHEN Tag13_Value = '' THEN NULL				
				ELSE STG.Tag13_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag13_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag13_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag13_Id IS NOT NULL
			AND STG.Tag13_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag14_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag14_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag14_Value > 999999999 THEN NULL
				WHEN Tag14_Value < -999999999 THEN NULL
				WHEN Tag14_Value = '' THEN NULL				
				ELSE STG.Tag14_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag14_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag14_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag14_Id IS NOT NULL
			AND STG.Tag14_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag15_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag15_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag15_Value > 999999999 THEN NULL
				WHEN Tag15_Value < -999999999 THEN NULL
				WHEN Tag15_Value = '' THEN NULL				
				ELSE STG.Tag15_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag15_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag15_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag15_Id IS NOT NULL
			AND STG.Tag15_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag16_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag16_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag16_Value > 999999999 THEN NULL
				WHEN Tag16_Value < -999999999 THEN NULL
				WHEN Tag16_Value = '' THEN NULL				
				ELSE STG.Tag16_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag16_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag16_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag16_Id IS NOT NULL
			AND STG.Tag16_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag17_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag17_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag17_Value > 999999999 THEN NULL
				WHEN Tag17_Value < -999999999 THEN NULL
				WHEN Tag17_Value = '' THEN NULL				
				ELSE STG.Tag17_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag17_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag17_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag17_Id IS NOT NULL
			AND STG.Tag17_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag18_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag18_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag18_Value > 999999999 THEN NULL
				WHEN Tag18_Value < -999999999 THEN NULL
				WHEN Tag18_Value = '' THEN NULL				
				ELSE STG.Tag18_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag18_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag18_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag18_Id IS NOT NULL
			AND STG.Tag18_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag19_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag19_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag19_Value > 999999999 THEN NULL
				WHEN Tag19_Value < -999999999 THEN NULL
				WHEN Tag19_Value = '' THEN NULL				
				ELSE STG.Tag19_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, tag19_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, tag19_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag19_Id IS NOT NULL
			AND STG.Tag19_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag20_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag20_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag20_Value > 999999999 THEN NULL
				WHEN Tag20_Value < -999999999 THEN NULL
				WHEN Tag20_Value = '' THEN NULL				
				ELSE STG.Tag20_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag20_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag20_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag20_Id IS NOT NULL
			AND STG.Tag20_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag21_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag21_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag21_Value > 999999999 THEN NULL
				WHEN Tag21_Value < -999999999 THEN NULL
				WHEN Tag21_Value = '' THEN NULL
				ELSE STG.Tag21_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag21_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag21_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag21_Id IS NOT NULL
			AND STG.Tag21_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag22_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag21_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag22_Value > 999999999 THEN NULL
				WHEN Tag22_Value < -999999999 THEN NULL
				WHEN Tag22_Value = '' THEN NULL
				ELSE STG.Tag22_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag22_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag22_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag22_Id IS NOT NULL
			AND STG.Tag22_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag23_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag23_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag23_Value > 999999999 THEN NULL
				WHEN Tag23_Value < -999999999 THEN NULL
				WHEN Tag23_Value = '' THEN NULL
				ELSE STG.Tag23_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag23_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag23_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag23_Id IS NOT NULL
			AND STG.Tag23_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag24_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag24_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag24_Value > 999999999 THEN NULL
				WHEN Tag24_Value < -999999999 THEN NULL
				WHEN Tag24_Value = '' THEN NULL
				ELSE STG.Tag24_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag24_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag24_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag24_Id IS NOT NULL
			AND STG.Tag24_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag25_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag25_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag25_Value > 999999999 THEN NULL
				WHEN Tag25_Value < -999999999 THEN NULL
				WHEN Tag25_Value = '' THEN NULL
				ELSE STG.Tag25_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag25_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag25_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag25_Id IS NOT NULL
			AND STG.Tag25_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag26_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag26_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag26_Value > 999999999 THEN NULL
				WHEN Tag26_Value < -999999999 THEN NULL
				WHEN Tag26_Value = '' THEN NULL
				ELSE STG.Tag26_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag26_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag26_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag26_Id IS NOT NULL
			AND STG.Tag26_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag27_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag27_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag27_Value > 999999999 THEN NULL
				WHEN Tag27_Value < -999999999 THEN NULL
				WHEN Tag27_Value = '' THEN NULL
				ELSE STG.Tag27_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag27_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag27_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag27_Id IS NOT NULL
			AND STG.Tag27_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag28_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag28_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag28_Value > 999999999 THEN NULL
				WHEN Tag28_Value < -999999999 THEN NULL
				WHEN Tag28_Value = '' THEN NULL
				ELSE STG.Tag28_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag28_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag28_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag28_Id IS NOT NULL
			AND STG.Tag28_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag29_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag29_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag29_Value > 999999999 THEN NULL
				WHEN Tag29_Value < -999999999 THEN NULL
				WHEN Tag29_Value = '' THEN NULL
				ELSE STG.Tag29_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag29_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag29_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag29_Id IS NOT NULL
			AND STG.Tag29_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag30_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag30_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag30_Value > 999999999 THEN NULL
				WHEN Tag30_Value < -999999999 THEN NULL
				WHEN Tag30_Value = '' THEN NULL
				ELSE STG.Tag30_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag30_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag30_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag30_Id IS NOT NULL
			AND STG.Tag30_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag31_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag31_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag31_Value > 999999999 THEN NULL
				WHEN Tag31_Value < -999999999 THEN NULL
				WHEN Tag31_Value = '' THEN NULL
				ELSE STG.Tag31_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag31_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag31_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag31_Id IS NOT NULL
			AND STG.Tag31_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag32_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag31_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag32_Value > 999999999 THEN NULL
				WHEN Tag32_Value < -999999999 THEN NULL
				WHEN Tag32_Value = '' THEN NULL
				ELSE STG.Tag32_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag32_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag32_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag32_Id IS NOT NULL
			AND STG.Tag32_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag33_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag33_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag33_Value > 999999999 THEN NULL
				WHEN Tag33_Value < -999999999 THEN NULL
				WHEN Tag33_Value = '' THEN NULL
				ELSE STG.Tag33_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag33_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag33_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag33_Id IS NOT NULL
			AND STG.Tag33_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag34_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag34_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag34_Value > 999999999 THEN NULL
				WHEN Tag34_Value < -999999999 THEN NULL
				WHEN Tag34_Value = '' THEN NULL
				ELSE STG.Tag34_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag34_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag34_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag34_Id IS NOT NULL
			AND STG.Tag34_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag35_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag35_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag35_Value > 999999999 THEN NULL
				WHEN Tag35_Value < -999999999 THEN NULL
				WHEN Tag35_Value = '' THEN NULL
				ELSE STG.Tag35_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag35_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag35_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag35_Id IS NOT NULL
			AND STG.Tag35_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag36_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag36_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag36_Value > 999999999 THEN NULL
				WHEN Tag36_Value < -999999999 THEN NULL
				WHEN Tag36_Value = '' THEN NULL
				ELSE STG.Tag36_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag36_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag36_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag36_Id IS NOT NULL
			AND STG.Tag36_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag37_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag37_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag37_Value > 999999999 THEN NULL
				WHEN Tag37_Value < -999999999 THEN NULL
				WHEN Tag37_Value = '' THEN NULL
				ELSE STG.Tag37_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag37_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag37_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag37_Id IS NOT NULL
			AND STG.Tag37_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag38_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag38_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag38_Value > 999999999 THEN NULL
				WHEN Tag38_Value < -999999999 THEN NULL
				WHEN Tag38_Value = '' THEN NULL
				ELSE STG.Tag38_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag38_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag38_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag38_Id IS NOT NULL
			AND STG.Tag38_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag39_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag39_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag39_Value > 999999999 THEN NULL
				WHEN Tag39_Value < -999999999 THEN NULL
				WHEN Tag39_Value = '' THEN NULL
				ELSE STG.Tag39_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag39_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag39_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag39_Id IS NOT NULL
			AND STG.Tag39_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag40_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag40_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag40_Value > 999999999 THEN NULL
				WHEN Tag40_Value < -999999999 THEN NULL
				WHEN Tag40_Value = '' THEN NULL
				ELSE STG.Tag40_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag40_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag40_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag40_Id IS NOT NULL
			AND STG.Tag40_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag41_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag41_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag41_Value > 999999999 THEN NULL
				WHEN Tag41_Value < -999999999 THEN NULL
				WHEN Tag41_Value = '' THEN NULL
				ELSE STG.Tag41_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag41_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag41_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag41_Id IS NOT NULL
			AND STG.Tag41_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag42_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag41_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag42_Value > 999999999 THEN NULL
				WHEN Tag42_Value < -999999999 THEN NULL
				WHEN Tag42_Value = '' THEN NULL
				ELSE STG.Tag42_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag42_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag42_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag42_Id IS NOT NULL
			AND STG.Tag42_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag43_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag43_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag43_Value > 999999999 THEN NULL
				WHEN Tag43_Value < -999999999 THEN NULL
				WHEN Tag43_Value = '' THEN NULL
				ELSE STG.Tag43_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag43_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag43_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag43_Id IS NOT NULL
			AND STG.Tag43_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag44_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag44_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag44_Value > 999999999 THEN NULL
				WHEN Tag44_Value < -999999999 THEN NULL
				WHEN Tag44_Value = '' THEN NULL
				ELSE STG.Tag44_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag44_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag44_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag44_Id IS NOT NULL
			AND STG.Tag44_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag45_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag45_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag45_Value > 999999999 THEN NULL
				WHEN Tag45_Value < -999999999 THEN NULL
				WHEN Tag45_Value = '' THEN NULL
				ELSE STG.Tag45_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag45_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag45_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag45_Id IS NOT NULL
			AND STG.Tag45_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag46_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag46_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag46_Value > 999999999 THEN NULL
				WHEN Tag46_Value < -999999999 THEN NULL
				WHEN Tag46_Value = '' THEN NULL
				ELSE STG.Tag46_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag46_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag46_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag46_Id IS NOT NULL
			AND STG.Tag46_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag47_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag47_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag47_Value > 999999999 THEN NULL
				WHEN Tag47_Value < -999999999 THEN NULL
				WHEN Tag47_Value = '' THEN NULL
				ELSE STG.Tag47_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag47_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag47_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag47_Id IS NOT NULL
			AND STG.Tag47_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag48_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag48_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag48_Value > 999999999 THEN NULL
				WHEN Tag48_Value < -999999999 THEN NULL
				WHEN Tag48_Value = '' THEN NULL
				ELSE STG.Tag48_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag48_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag48_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag48_Id IS NOT NULL
			AND STG.Tag48_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag49_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag49_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag49_Value > 999999999 THEN NULL
				WHEN Tag49_Value < -999999999 THEN NULL
				WHEN Tag49_Value = '' THEN NULL
				ELSE STG.Tag49_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag49_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag49_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag49_Id IS NOT NULL
			AND STG.Tag49_Id <> ''
		UNION ALL
		SELECT STG.Ref_Location,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 1 for 10) AS DATE FORMAT 'YYYY-MM-DD') as Trans_Date,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 12 for 2) AS SMALLINT) as Trans_Hour,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 15 for 2) AS SMALLINT) as Trans_Min,
			CAST(SUBSTRING(CAST(STG.trans_timestamp AS VARCHAR(20)) from 18 for 2) AS SMALLINT) as Trans_Sec,
			STG.Trans_Timestamp,
			STG.Tag50_ID as Tag_ID,			
			CASE 
				WHEN TRYCAST(Tag50_Value as DECIMAL(20,4)) IS NULL THEN NULL
				WHEN Tag50_Value > 999999999 THEN NULL
				WHEN Tag50_Value < -999999999 THEN NULL
				WHEN Tag50_Value = '' THEN NULL
				ELSE STG.Tag50_Value
			END AS Tag_Value
		FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG STG
		INNER JOIN
			(
			SELECT max(row_num) as Row_Num, trans_timestamp, ref_location, Tag50_id
			FROM TRNG_RefineryOptimizer.Db250092_RO_SENSOR_STG
			GROUP BY trans_timestamp, ref_location, Tag50_id
			) SUB
			ON STG.Row_Num=SUB.Row_NUM
		WHERE STG.Tag50_Id IS NOT NULL
			AND STG.Tag50_Id <> ''
		) STG
			ON CORE.Ref_Location = STG.Ref_Location
			AND CORE.Trans_Date = STG.Trans_Date
			AND CORE.Trans_Hour = STG.Trans_Hour
			AND CORE.Trans_Min = STG.Trans_Min
			AND CORE.Trans_Sec = STG.Trans_Sec
			AND CORE.Tag_ID = STG.tag_ID
		WHEN MATCHED THEN UPDATE SET tag_Value = STG.tag_value, Last_Update_DTTM = CURRENT_TIMESTAMP(0)
		WHEN NOT MATCHED THEN INSERT
		        VALUES(STG.Ref_Location,STG.Trans_Date,STG.Trans_Hour,STG.Trans_Min,STG.Trans_Sec,STG.Trans_Timestamp,
		        	STG.tag_ID,STG.tag_Value,CURRENT_TIMESTAMP(0),CURRENT_TIMESTAMP(0));

END;

Replace Procedure TRNG_RefineryOptimizer.DB250092_SENSOR_AJI_IDX_CREATE()
Begin
	CREATE JOIN INDEX TRNG_RefineryOptimizer.DB250092_SENSOR_AJI,
	CHECKSUM = DEFAULT AS SELECT COUNT(*)(FLOAT, NAMED CountStar ),
	TRNG_RefineryOptimizer.DB250092_RO_Sensor.ref_location, TRNG_RefineryOptimizer.DB250092_RO_Sensor.Tag_ID ,
	TRNG_RefineryOptimizer.DB250092_RO_Sensor.Trans_Date ,TRNG_RefineryOptimizer.DB250092_RO_Sensor.Trans_Hour ,
	SUM(TRNG_RefineryOptimizer.DB250092_RO_Sensor.Tag_Value )(DECIMAL(38,4), NAMED tag_value ),
	COUNT(TRNG_RefineryOptimizer.DB250092_RO_Sensor.Tag_Value )(FLOAT, NAMED tag_cnt )
	FROM TRNG_RefineryOptimizer.DB250092_RO_Sensor 
	GROUP BY TRNG_RefineryOptimizer.DB250092_RO_Sensor.ref_location, TRNG_RefineryOptimizer.DB250092_RO_Sensor.Tag_ID ,
	TRNG_RefineryOptimizer.DB250092_RO_Sensor.Trans_Date ,TRNG_RefineryOptimizer.DB250092_RO_Sensor.Trans_Hour 
	PRIMARY INDEX (Ref_Location,Tag_ID,Trans_Date,Trans_Hour )
	PARTITION BY RANGE_N(TRNG_RefineryOptimizer.DB250092_RO_Sensor.Trans_Date  BETWEEN 
	'1990-01-01' AND '2040-12-31' EACH INTERVAL '1' DAY ,
	NO RANGE);
	collect stats on TRNG_RefineryOptimizer.DB250092_SENSOR_AJI column ref_location;
	collect stats on TRNG_RefineryOptimizer.DB250092_SENSOR_AJI column tag_id;
	collect stats on TRNG_RefineryOptimizer.DB250092_SENSOR_AJI column trans_date;
	collect stats on TRNG_RefineryOptimizer.DB250092_SENSOR_AJI column trans_hour;
	collect stats on TRNG_RefineryOptimizer.DB250092_SENSOR_AJI;
End;

Replace Procedure TRNG_RefineryOptimizer.DB250092_SENSOR_AJI_IDX_DROP()
Begin 
lock TRNG_RefineryOptimizer.DB250092_SENSOR_AJI exclusive nowait
drop join index TRNG_RefineryOptimizer.DB250092_SENSOR_AJI;
End;

