create database TRNG_Oil_Industry from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_Oil_Industry_test1", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/test1/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_SRFC_SENSOR_RIG_STATES", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/SRFC-SENSOR-RIG-STATES/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_ac_monthly", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/ac-monthly/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_Rig_States_Dictionary", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/Rig-States-Dictionary/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_AC_KEYWORD_PATH", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/AC-KEYWORD-PATH/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_ac_exception", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/ac-exception/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_AC_Phase_dir", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/AC-Phase-dir/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_hookload_hist_Histogram", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/hookload-hist-Histogram/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_AC_ECONOMIC_DC3", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/AC-ECONOMIC-DC3/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_Rig_State_Micro_Inter_Def", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/Rig-State-Micro-Inter-Def/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_DDaaS_Log_Tbl", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/DDaaS-Log-Tbl/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_WELL_RIGS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/WELL-RIGS/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_SRFC_SENSOR_PARMS_PPI_FLAT", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/SRFC-SENSOR-PARMS-PPI-FLAT/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_WELLS", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/WELLS/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_AC_ECONOMIC_detail", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/AC-ECONOMIC-detail/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_Well_calc_info", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/Well-calc-info/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_Rig_States_tripout_depth", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/Rig-States-tripout-depth/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_ac_economic_pred", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/ac-economic-pred/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_Rig_States_Parameters", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/Rig-States-Parameters/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_Rig_State_StandLength", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/Rig-State-StandLength/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_ac_economic", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/ac-economic/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_AC_features", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/AC-features/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_ac_anomaly_lookup", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/ac-anomaly-lookup/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_ac_anomaly_pred", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/ac-anomaly-pred/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_ac_anomaly", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/ac-anomaly/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_ac_property", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/ac-property/'));
create foreign table gs_tables_db."TRNG_Oil_Industry_Srfc_Sensor_Rig_Inter_States", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-Oil-Industry/Srfc-Sensor-Rig-Inter-States/'));
replace view TRNG_Oil_Industry.ac_anomaly as locking row for access select
"PROPNUM"
,"ASSET_GROUP"
,"QUALIFIER"
,"MAJOR"
,"Anomaly_Comment"
from gs_tables_db.TRNG_Oil_Industry_ac_anomaly;
replace view TRNG_Oil_Industry.ac_anomaly_lookup as locking row for access select
"Anomaly_Id"
,"Anomaly_Comment"
,"Anomaly_Desc"
,"ML_model_ind"
from gs_tables_db.TRNG_Oil_Industry_ac_anomaly_lookup;
replace view TRNG_Oil_Industry.ac_anomaly_pred as locking row for access select
"PROPNUM"
,"ASSET_GROUP"
,"QUALIFIER"
,"MAJOR"
,"Anomaly_Comment"
from gs_tables_db.TRNG_Oil_Industry_ac_anomaly_pred;
replace view TRNG_Oil_Industry.ac_economic as locking row for access select
"UID"
,"PROPNUM"
,"SECTION"
,"SEQID"
,"QUALIFIER"
,"KYWRD"
,"EXPRESSION"
from gs_tables_db.TRNG_Oil_Industry_ac_economic;
replace view TRNG_Oil_Industry.AC_ECONOMIC_DC3 as locking row for access select
"PROPNUM"
,"MAJOR"
,"SECTION"
,"SEQUENCE"
,"QUALIFIER"
,"KEYWORD"
,"KEYWORD_seq"
,"KEYWORD_maxseq"
,"product_rate"
,"final_rate"
,"rate_unit"
,"Fcst_cutoff_value"
,"Fcst_cutoff_unit"
,"Fcst_formula"
,"Fcst_param"
,"product_rate_dec"
,"final_rate_dec"
,"Fcst_cutoff_value_dec"
,"Fcst_param_dec"
,"Start_expression"
,"start_year"
,"start_month"
,"Decline_method"
,"Decline_b"
,"Decline_Di_1"
,"Decline_Di_2"
,"cutoff_Di"
from gs_tables_db.TRNG_Oil_Industry_AC_ECONOMIC_DC3;
replace view TRNG_Oil_Industry.AC_ECONOMIC_detail as locking row for access select
"PROPNUM"
,"MARJOR"
,"SEQUENCE"
,"QUALIFIER"
,"KEYWORD"
,"KEYWORD_seq"
,"KEYWORD_maxseq"
,"product_rate"
,"final_rate"
,"Fcst_cutoff_value"
,"Fcst_cutoff_unit"
,"Decline_method"
,"Decline_b"
,"Decline_Di"
,"fcst_start_t"
,"fcst_end_t"
,"adj_fcst_end_t"
,"inc_adj_fcst_end_t"
,"inc_fcst_end_t"
,"start_unit"
,"end_unit"
,"PROP_end_t"
,"adj_fcst_end_t2"
,"inc_adj_fcst_end_t2"
,"end_unit2"
,"end_unit1"
from gs_tables_db.TRNG_Oil_Industry_AC_ECONOMIC_detail;
replace view TRNG_Oil_Industry.ac_economic_pred as locking row for access select
"UID"
,"PROPNUM"
,"SECTION"
,"SEQID"
,"QUALIFIER"
,"KYWRD"
,"EXPRESSION"
from gs_tables_db.TRNG_Oil_Industry_ac_economic_pred;
replace view TRNG_Oil_Industry.ac_exception as locking row for access select
"PROPNUM"
,"SCENARIO"
,"MAJOR"
,"Exception_Comment"
from gs_tables_db.TRNG_Oil_Industry_ac_exception;
replace view TRNG_Oil_Industry.AC_features as locking row for access select
"PROPNUM"
,"QUALIFIER"
,"MARJOR"
,"keyword_order"
,"total_formula_cnt"
,"oil_formula_cnt"
,"gas_formula_cnt"
,"wtr_formula_cnt"
,"oilratio_formula_cnt"
,"gasratio_formula_cnt"
,"wtrratio_formula_cnt"
,"start_oil_rate"
,"end_oil_rate"
,"peak_oil_rate"
,"end_oil_rate1"
,"start_oil_time"
,"end_oil_time"
,"peak_oil_time"
,"start_gas_rate"
,"end_gas_rate"
,"peak_gas_rate"
,"end_gas_rate1"
,"start_gas_time"
,"end_gas_time"
,"peak_gas_time"
,"start_wtr_rate"
,"end_wtr_rate"
,"peak_wtr_rate"
,"end_wtr_rate1"
,"start_wtr_time"
,"end_wtr_time"
,"peak_wtr_time"
,"peak_major_time"
,"start_gor_rate"
,"end_gor_rate"
,"end_gor_rate1"
,"peak_gor_rate"
,"sw_oil_unit"
,"sw_gas_unit"
,"sw_wtr_unit"
,"oil_fcst_order"
,"gas_fcst_order"
,"wtr_fcst_order"
from gs_tables_db.TRNG_Oil_Industry_AC_features;
replace view TRNG_Oil_Industry.AC_KEYWORD_PATH as locking row for access select
"propnum"
,"qualifier"
,"major"
,"keyword_order"
from gs_tables_db.TRNG_Oil_Industry_AC_KEYWORD_PATH;
replace view TRNG_Oil_Industry.ac_monthly as locking row for access select
"PROPNUM"
,"SCENARIO"
,"OUTDATE"
,"Oil"
,"Gas"
,"Water"
from gs_tables_db.TRNG_Oil_Industry_ac_monthly;
replace view TRNG_Oil_Industry.AC_Phase_dir as locking row for access select
"propnum"
,"qualifier"
,"marjor"
,"keyword"
,"fcst_order"
from gs_tables_db.TRNG_Oil_Industry_AC_Phase_dir;
replace view TRNG_Oil_Industry.ac_property as locking row for access select
"PROPNUM"
,"WELL_ID"
,"RESERVOIR"
,"API"
,"OPERATED"
,"COUNTY"
,"MAJOR"
,"DRILL"
,"TYPE"
,"PSD"
,"ASSET_GROUP"
,"GEOL_AREA"
,"HOLE_DIRECTION"
,"PROD_LAT_LENGTH_MI"
,"WELLBORE_CNT"
,"OPPORTUNITY_CNT"
,"THIRD_PARTY"
from gs_tables_db.TRNG_Oil_Industry_ac_property;
replace view TRNG_Oil_Industry.DDaaS_Log_Tbl as locking row for access select
"time_stamp"
,"procedure_name"
,"sql_state"
,"sql_code"
,"sql_row_cnt"
,"msg_txt"
,"sql_txt"
from gs_tables_db.TRNG_Oil_Industry_DDaaS_Log_Tbl;
replace view TRNG_Oil_Industry.hookload_hist_Histogram as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"Bin_number"
,"hook_from"
,"hook_to"
,"bin_freq"
from gs_tables_db.TRNG_Oil_Industry_hookload_hist_Histogram;
replace view TRNG_Oil_Industry.Rig_States_Dictionary as locking row for access select
"Rig_State_Word"
,"Rig_State_Word_Micro_State"
,"Rig_State_Word_Defn"
,"Rig_State_Word_Desc"
from gs_tables_db.TRNG_Oil_Industry_Rig_States_Dictionary;
replace view TRNG_Oil_Industry.Rig_States_Parameters as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"SurfaceCasingDepth"
,"StandLength_Multipler"
,"Hookload_Multipler"
,"Block_Weight_Slips_Offset"
,"In_Slips_PipePressure_Threshold"
,"In_Slips_PumpRate_Threshold"
,"In_Slips_PumpStroke_Threshold"
,"In_Slips_Torque_Threshold"
,"In_Slips_BlockHeight_Threshold"
,"In_Slips_RPM_Threshold"
,"StandLength_Tolerence_ratio"
,"drill_state_min_sec"
,"min_inter_state_sec"
from gs_tables_db.TRNG_Oil_Industry_Rig_States_Parameters;
replace view TRNG_Oil_Industry.Rig_States_tripout_depth as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"seqno"
,"Srfc_Sensor_Parm_Ts"
,"BitMeasuredDepth"
,"In_Out"
from gs_tables_db.TRNG_Oil_Industry_Rig_States_tripout_depth;
replace view TRNG_Oil_Industry.Rig_State_Micro_Inter_Def as locking row for access select
"Micro_State"
,"Inter_State"
from gs_tables_db.TRNG_Oil_Industry_Rig_State_Micro_Inter_Def;
replace view TRNG_Oil_Industry.Rig_State_StandLength as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"rig"
,"stand_grp"
,"standlength"
,"stand_freq"
,"rnk"
from gs_tables_db.TRNG_Oil_Industry_Rig_State_StandLength;
replace view TRNG_Oil_Industry.SRFC_SENSOR_PARMS_PPI_FLAT as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"Srfc_Sensor_Parm_Ts"
,"Srfc_Sensor_Parm_Dt"
,"Srfc_Sensor_Parm_Hr"
,"DownholeMWDAzimuthRaw"
,"BitMeasuredDepth"
,"BlockHeight"
,"WellboreMeasuredDepth"
,"DownholeMotorDiffernetialPressure"
,"FlowOutPercent"
,"DownholeMWDGamma"
,"DownholeMWDToolfaceGravity"
,"HookLoad"
,"DownholeMWDInclinationRaw"
,"DownholeMWDToolfaceMagnetic"
,"DownholeROP"
,"RotaryRPM"
,"MudPumpStrokeRate"
,"MudPumpStrokeRate2"
,"StandPipePressure"
,"RotaryTorque"
,"MudPumpVolumetricRate"
,"WeightOnBit"
,"WellboreToolface"
,"TripSpeed"
,"DownholeMWDGamma_AtBit"
,"DownholeMWDGamma_Continuous"
,"DownholeMWDGammaDepth"
,"RigState_Simple"
,"WellboreMeasuredDepth_Diff"
,"Depth_Range_Begin_100"
,"Depth_Range_End_100"
,"Depth_Range_Begin_50"
,"Depth_Range_End_50"
,"Depth_Range_Begin_10"
,"Depth_Range_End_10"
,"Depth_Range_Begin_1"
,"Depth_Range_End_1"
,"seqno"
,"Batch_Nbr"
,"LOAD_DT"
,"LOAD_TM"
from gs_tables_db.TRNG_Oil_Industry_SRFC_SENSOR_PARMS_PPI_FLAT;
replace view TRNG_Oil_Industry.Srfc_Sensor_Rig_Inter_States as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"Macro_State"
,"Intermediate_State"
,"Start_Ts"
,"End_Ts"
,"Start_seqno"
,"End_seqno"
,"Inter_State_sec"
,"Back_Reaming_sec"
,"Hoist_sec"
,"Hole_Conditioning_sec"
,"In_Slips_sec"
,"Pumping_sec"
,"Pumping_In_sec"
,"Pumping_Out_sec"
,"Reaming_In_sec"
,"Rotary_Drilling_sec"
,"SlackOff_sec"
,"Slide_Drilling_sec"
,"Static_sec"
,"Surface_sec"
,"Oscillation_sec"
,"Undefined_sec"
,"start_bitDepth"
,"end_bitDepth"
,"start_holeDepth"
,"end_holeDepth"
from gs_tables_db.TRNG_Oil_Industry_Srfc_Sensor_Rig_Inter_States;
replace view TRNG_Oil_Industry.SRFC_SENSOR_RIG_STATES as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"seqno"
,"Srfc_Sensor_Parm_Dt"
,"Srfc_Sensor_Parm_Ts"
,"Slips_State"
,"stateMacro"
,"bitPosition"
,"bitDirection"
,"blockDirection"
,"blockPosition"
,"isRotating"
,"IsTorque"
,"isDeltaP"
,"isWOB"
,"isSPP"
,"hookload"
,"Rig_State_Word"
,"Rig_state_Word_Defn"
,"Rig_State"
,"Alt_Rig_State"
from gs_tables_db.TRNG_Oil_Industry_SRFC_SENSOR_RIG_STATES;
replace view TRNG_Oil_Industry.test1 as locking row for access select
"col1"
,"col2"
,"col3"
from gs_tables_db.TRNG_Oil_Industry_test1;
replace view TRNG_Oil_Industry.WELLS as locking row for access select
"Well_ID"
,"CUST_ID"
,"WELL_NAME"
,"CUST_WELL_ID"
,"CUST_WELL_NAME"
,"API"
,"COUNTY"
,"STATE"
,"OPERATOR"
,"EKEY"
,"BATCH_NBR"
,"load_date"
,"load_time"
from gs_tables_db.TRNG_Oil_Industry_WELLS;
replace view TRNG_Oil_Industry.Well_calc_info as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"blockweight_upd_TS"
,"blockweight_Bin"
,"blockWeight"
,"blockweightLow_Bin"
,"blockWeightLow"
,"blockweightHigh_Bin"
,"blockWeightHigh"
,"standlength_upd_TS"
,"standlength"
,"last_process_seqno"
,"last_slide_st_seqno"
,"last_slide_id"
,"last_stand_st_seqno"
,"last_stand_id"
,"dril_static_upd_TS"
,"last_alt_drill_st_seqno"
,"last_stateMacro"
,"last_interstate_start_seqno"
from gs_tables_db.TRNG_Oil_Industry_Well_calc_info;
replace view TRNG_Oil_Industry.WELL_RIGS as locking row for access select
"Well_ID"
,"WELL_NAME"
,"Rig"
,"EKEY"
,"ReceivedOn"
from gs_tables_db.TRNG_Oil_Industry_WELL_RIGS;
REPLACE VIEW hookload_hist_Histogram_v AS
LOCKING ROW FOR ACCESS
SELECT * FROM hookload_hist_Histogram;

REPLACE VIEW Rig_State_StandLength_v AS
LOCKING ROW FOR ACCESS
SELECT * FROM Rig_State_StandLength;

REPLACE VIEW SRFC_SENSOR_PARMS_30X_v AS
SELECT
  i.well_id, i.well_bore_id,
  i.Srfc_Sensor_Parm_Dt,
  EXTRACT(HOUR FROM i.Srfc_Sensor_Parm_Ts) AS Ts_hr,
  FLOOR(
  CAST(
    CAST(i.Srfc_Sensor_Parm_Dt AS BIGINT FORMAT '9999999')*86400 +
    CAST(EXTRACT(HOUR FROM i.Srfc_Sensor_Parm_Ts)*3600 AS BIGINT) +
    CAST(EXTRACT(MINUTE FROM i.Srfc_Sensor_Parm_Ts)*60 AS BIGINT) +
    CAST(EXTRACT(SECOND FROM i.Srfc_Sensor_Parm_Ts) AS BIGINT
   ) AS FLOAT)   / 30.0000) AS TS_grp_nbr,
  s.stateMacro,
  MIN(i.Srfc_Sensor_Parm_Ts) AS Start_TS,
  MAX(i.Srfc_Sensor_Parm_Ts) AS End_TS,
  AVERAGE(i.BitMeasuredDepth) AS BitMeasuredDepth,
  AVERAGE(i.WellboreMeasuredDepth) AS WellboreMeasuredDepth,
  AVERAGE(i.BlockHeight) AS BlockHeight,
  AVERAGE(i.DownholeMotorDiffernetialPressure ) AS DownholeMotorDiffernetialPressure ,
  AVERAGE(i.FlowOutPercent ) AS FlowOutPercent,
  AVERAGE(i.HookLoad) AS HookLoad,
  AVERAGE(i.DownholeROP) AS DownholeROP,
  AVERAGE(i.RotaryRPM) AS RotaryRPM,
  AVERAGE(i.MudPumpStrokeRate) AS MudPumpStrokeRate,
  AVERAGE(i.StandPipePressure) AS StandPipePressure,
  AVERAGE(i.RotaryTorque) AS RotaryTorque,
  AVERAGE(i.MudPumpVolumetricRate) AS MudPumpVolumetricRate,
  AVERAGE(i.WeightOnBit) AS WeightOnBit
FROM SRFC_SENSOR_PARMS_PPI_FLAT i
INNER JOIN SRFC_SENSOR_RIG_STATES s
ON (i.well_id      = s.well_id
AND i.well_bore_id = s.well_bore_id
AND i.seqno        = s.seqno)
GROUP BY i.well_id, i.well_bore_id, i.Srfc_Sensor_Parm_Dt, Ts_hr, TS_grp_nbr, s.stateMacro;

REPLACE VIEW Srfc_Sensor_Rig_Inter_States_v AS
LOCKING ROW FOR ACCESS
SELECT * FROM Srfc_Sensor_Rig_Inter_States;

REPLACE VIEW wells_v AS
LOCKING ROW FOR ACCESS
SELECT * FROM wells;

REPLACE PROCEDURE trng_oil_industry.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                   
 AC_create_features_sp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                        
 
( 
  OUT OUT_Return_CD         INTEGER
)
BEGIN
  DECLARE SqlStmt                 VARCHAR(20000);
  DECLARE Cond_SqlStmt            VARCHAR(2000);
  DECLARE proc_name               VARCHAR(50);

  DECLARE error_msg_txt           VARCHAR(100);
  DECLARE log_msg_txt             VARCHAR(100);
  DECLARE sp_sql_code             INTEGER;
  DECLARE sp_sql_state            VARCHAR(10);
  DECLARE sp_ins_activity_count   BIGINT;
  DECLARE sp_upd_activity_count   BIGINT;
  DECLARE check_point_id          INTEGER DEFAULT 0;
  DECLARE rc                      INTEGER;
  DECLARE max_seq                 INTEGER;
  DECLARE cur_seq                 INTEGER;

  ---------------------------------
  -- SQL EXCEPTION HANDLER BLOCK --
  ---------------------------------
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
      SET sp_sql_code = SQLCODE ;
      SET sp_sql_state = SQLSTATE ;
      SET OUT_Return_CD = SQLCODE ;
      SET proc_name = 'AC_create_features_sp';

      INSERT INTO trng_oil_industry.Proc_Error_Tbl
      (CURRENT_TIMESTAMP, proc_name, sp_sql_state, sp_sql_code, 
       sp_ins_activity_count, error_msg_txt, SqlStmt);

    END;

  --------------
  -- START SP --
  --------------
LABEL_AC_CREATE_FEATURES:
BEGIN 

  SET proc_name = 'AC_create_features_sp';
  SET sp_ins_activity_count = 0 ;
  SET sp_upd_activity_count = 0 ;
  SET OUT_Return_CD = 0 ;
  SET sp_sql_code = 0 ;
  SET check_point_id  = 0;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,0, 0,
   0, 'Starting Stored Procedure', NULL); 


  --------------------------------------
  -- Remove Existing volation tables  --
  --------------------------------------
  CALL trng_oil_industry.AC_drop_vt_sp('AC_ECONOMIC_detail_vt');
  CALL trng_oil_industry.AC_drop_vt_sp('AC_ECONOMIC_detail2_vt');
  CALL trng_oil_industry.AC_drop_vt_sp('AC_Recalc_ratio_end_vt');
  CALL trng_oil_industry.AC_drop_vt_sp('AC_Recalc_ratio_start_vt');
  CALL trng_oil_industry.AC_drop_vt_sp('AC_ECONOMIC_direction0_vt');
  CALL trng_oil_industry.AC_drop_vt_sp('AC_ECONOMIC_direction_vt');
  CALL trng_oil_industry.AC_drop_vt_sp('trng_oil_industry.AC_ECONOMIC_detail');
  CALL trng_oil_industry.AC_drop_vt_sp('trng_oil_industry.AC_KEYWORD_PATH');
  CALL trng_oil_industry.AC_drop_vt_sp('trng_oil_industry.AC_Phase_dir');
  CALL trng_oil_industry.AC_drop_vt_sp('trng_oil_industry.AC_features');

  ---------------------------------------------------
  -- Create volatile tables: AC_ECONOMIC_detail_vt --
  ---------------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
  CREATE MULTISET VOLATILE TABLE AC_ECONOMIC_detail_vt
     (
      PROPNUM VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC,
      MARJOR VARCHAR(3),
      SEQUENCE INTEGER,
      QUALIFIER VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC,
      KEYWORD VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC,
      KEYWORD_seq INTEGER,
      KEYWORD_maxseq INTEGER,
      product_rate VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC,
      final_rate VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC,
      Fcst_cutoff_value VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC,
      Fcst_cutoff_unit VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC,
      Decline_method VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC,
      Decline_b FLOAT,
      Decline_Di FLOAT,
      fcst_start_t FLOAT,
      fcst_end_t FLOAT,
      adj_fcst_end_t FLOAT,
      inc_adj_fcst_end_t FLOAT,
      inc_fcst_end_t BYTEINT,
      start_unit FLOAT,
      end_unit FLOAT
     )
  PRIMARY INDEX ( PROPNUM )
  ON COMMIT PRESERVE ROWS;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': CREATE VOLATILE TABLE: AC_ECONOMIC_detail_vt';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 



  ------------------------------------------------------
  -- Create volatile tables: AC_ECONOMIC_direction0_vt --
  ------------------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
  CREATE MULTISET VOLATILE TABLE AC_ECONOMIC_direction0_vt
     (
      PROPNUM VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC,
      MARJOR VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC,
      SEQUENCE INTEGER,
      QUALIFIER VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC,
      KEYWORD VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC,
      KEYWORD_seq INTEGER,
      KEYWORD_subseq BYTEINT,
      dir VARCHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC
     )
  PRIMARY INDEX ( PROPNUM )
  ON COMMIT PRESERVE ROWS;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': CREATE VOLATILE TABLE: AC_ECONOMIC_detail0_vt';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  ------------------------------------------------------
  -- Create volatile tables: AC_ECONOMIC_direction_vt --
  ------------------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
  CREATE MULTISET VOLATILE TABLE AC_ECONOMIC_direction_vt
     (
      PROPNUM VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC,
      MARJOR VARCHAR(3),
      SEQUENCE INTEGER,
      QUALIFIER VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC,
      KEYWORD VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC,
      KEYWORD_seq INTEGER,
      KEYWORD_subseq INTEGER,
      Dir CHAR(1) CHARACTER SET LATIN CASESPECIFIC,
      prev_Dir CHAR(1) CHARACTER SET LATIN CASESPECIFIC
     )
  PRIMARY INDEX ( PROPNUM )
  ON COMMIT PRESERVE ROWS;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': CREATE VOLATILE TABLE: AC_ECONOMIC_detail_vt';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 



  -----------------------------------------
  -- Get maximun sequence for each phase --
  -----------------------------------------
  SET check_point_id = check_point_id + 1;

  SELECT 
    MAX(keyword_seq) AS max_seq
    INTO :max_seq
  FROM trng_oil_industry.AC_ECONOMIC_DC3
  ;
 

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': MAX Keyword Sequence = '||TRIM(max_seq);
  SET error_msg_txt = 'Error: ' || log_msg_txt;


  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, NULL); 


  -----------------------------------------
  -- Processs for each sequence in order --
  -----------------------------------------

  SET cur_seq = 1;
  WHILE (cur_seq <= max_seq)
  DO
    SET check_point_id = check_point_id + 1;
    SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Processing Keyword seq = '||TRIM(cur_seq);

    IF (cur_seq = 1) THEN
       SET Cond_SqlStmt = '
    (SELECT	
      e.PROPNUM, e.MAJOR, e.SECTION, e.SEQUENCE, e.QUALIFIER, e.KEYWORD, e.KEYWORD_seq,
      e.KEYWORD_maxseq, e.product_rate, e.final_rate, e.rate_unit, e.Fcst_cutoff_value,
      e.Fcst_cutoff_unit, e.Fcst_formula, e.Fcst_param, 
      e.product_rate_dec,
      e.final_rate_dec, e.Fcst_cutoff_value_dec, e.Fcst_param_dec,
      e.start_year, e.start_month, 
      (CASE WHEN e.Decline_method IN (''Hyperbolic'',''Tangent'') THEN ''Hyperbolic'' ELSE e.Decline_method END) AS Decline_method, 
      e.Decline_b, 
      (CASE WHEN COALESCE(e.Decline_Di_2,e.Decline_Di_1) BETWEEN 0.00000 AND 0.00001
        THEN 0.00001 
        ELSE COALESCE(e.Decline_Di_2,e.Decline_Di_1) END) AS Decline_Di,
      e.cutoff_Di, 0.00000000 AS prev_end_t
    FROM trng_oil_industry.AC_ECONOMIC_DC3 e
    WHERE e.KEYWORD_seq = 1
    )t';
    ELSE
       SET Cond_SqlStmt = '
    (SELECT	
      e.PROPNUM, e.MAJOR, e.SECTION, e.SEQUENCE, e.QUALIFIER, e.KEYWORD, e.KEYWORD_seq,
      e.KEYWORD_maxseq, e.product_rate, e.final_rate, e.rate_unit, e.Fcst_cutoff_value,
      e.Fcst_cutoff_unit, e.Fcst_formula, e.Fcst_param, 
      COALESCE(e.product_rate_dec, v.end_unit) AS product_rate_dec,
      e.final_rate_dec, e.Fcst_cutoff_value_dec, e.Fcst_param_dec,
      e.start_year, e.start_month, 
      (CASE WHEN e.Decline_method IN (''Hyperbolic'',''Tangent'') THEN ''Hyperbolic'' ELSE e.Decline_method END) AS Decline_method,
      e.Decline_b,
      (CASE WHEN COALESCE(e.Decline_Di_2,e.Decline_Di_1) BETWEEN 0.00000 AND 0.00001
        THEN 0.00001 
        ELSE COALESCE(e.Decline_Di_2,e.Decline_Di_1) END) AS Decline_Di,
      e.cutoff_Di, COALESCE(v.inc_adj_fcst_end_t, 0.0000000000) AS prev_end_t
    FROM trng_oil_industry.AC_ECONOMIC_DC3 e, AC_ECONOMIC_detail_vt v
    WHERE e.PROPNUM = v.PROPNUM
    AND   e.QUALIFIER = v.QUALIFIER
    AND   e.KEYWORD = v.KEYWORD
    AND   e.KEYWORD_seq = '||TRIM(cur_seq)||'
    AND   v.KEYWORD_seq = '||TRIM(cur_seq)||' -1
    )t';
    END IF;

    SET SqlStmt = '
INSERT INTO AC_ECONOMIC_detail_vt
SELECT
  PROPNUM,
  MAJOR,
  SEQUENCE,
  QUALIFIER,
  KEYWORD, KEYWORD_seq, KEYWORD_maxseq,
  product_rate, final_rate,
  Fcst_cutoff_value,
  Fcst_cutoff_unit,
  Decline_method,
  Decline_b,
  Decline_Di,
  prev_end_t+1.0000000 AS fcst_start_t,
  -- Duration --
  (CASE 
    WHEN product_rate_dec IS NOT NULL AND product_rate_dec<=0.00000000
     THEN 0.0000000000
    WHEN Fcst_cutoff_unit=''LIFE'' 
     THEN 99999.0000000000 
    WHEN Fcst_cutoff_unit IN (''AD'',''ADX'') 
--  AND Fcst_cutoff_value_dec IS NULL
     THEN 99999.0000000000 

    WHEN Fcst_cutoff_unit IN (''IYR'')
    AND fcst_cutoff_value_dec IS NOT NULL
     THEN fcst_cutoff_value_dec * 12.0000000000
    WHEN Fcst_cutoff_unit IN (''YRS'')
    AND fcst_cutoff_value_dec IS NOT NULL
     THEN (fcst_cutoff_value_dec * 12.0000000000) - prev_end_t
    WHEN Fcst_cutoff_unit IN (''IMO'',''IMOS'')
    AND fcst_cutoff_value_dec IS NOT NULL
     THEN fcst_cutoff_value_dec 
    WHEN Fcst_cutoff_unit IN (''MOS'', ''MO'')
    AND fcst_cutoff_value_dec IS NOT NULL
     THEN fcst_cutoff_value_dec - prev_end_t
    WHEN Fcst_cutoff_unit IN (''YRS'', ''IYR'', ''MOS'', ''MO'', ''IMO'',''IMOS'')
    AND fcst_cutoff_value = ''TO''
     THEN 0.0000000000
    WHEN final_rate = ''NL'' 
     THEN 0.0000000000
    WHEN Fcst_cutoff_unit = ''BBL''
     THEN
       (CASE 
         WHEN Fcst_cutoff_value=''X'' AND final_rate<>''X'' THEN 600.000000000
         WHEN KEYWORD_maxseq=KEYWORD_seq AND final_rate<>''X'' THEN 1.000000000
          ELSE 0.000000000 END) 
    WHEN Fcst_formula=''EXP'' 
--    AND Fcst_cutoff_unit=''EXP'' AND 
    AND final_rate_dec IS NOT NULL AND product_rate_dec IS NOT NULL
    AND Decline_Di <> 0.0000000000 AND Decline_Di IS NOT NULL
    AND final_rate_dec > 0.000000000
     THEN LN(product_rate_dec / final_rate_dec)/ Decline_Di
    WHEN Fcst_formula=''EXP'' AND Fcst_cutoff_unit=''EXP'' 
    AND final_rate_dec IS NULL AND product_rate_dec IS NOT NULL
     THEN 0.0000000000
    WHEN Decline_method = ''Hyperbolic'' 
    AND final_rate_dec IS NOT NULL AND product_rate_dec IS NOT NULL
    AND final_rate_dec <= product_rate_dec 
    AND Decline_Di <> 0.0000000000 AND Decline_Di IS NOT NULL
    AND Decline_b IS NOT NULL AND Decline_Di IS NOT NULL
    AND final_rate_dec > 0.000000000
     THEN
       (CASE WHEN Decline_b <> 0.0000000000 AND Decline_Di <> 0.0000000000
          THEN (POWER(product_rate_dec / final_rate_dec, Decline_b) - 1.0000000000) / (Decline_b * Decline_Di)
          ELSE 0.0000000 END)
    WHEN Fcst_cutoff_unit=''EXP'' AND Decline_method = ''Hyperbolic'' 
    AND fcst_cutoff_value_dec IS NOT NULL AND fcst_cutoff_value_dec >0.0
    AND Decline_b IS NOT NULL 
    AND Decline_Di IS NOT NULL AND Decline_Di < 0.0
     THEN (POWER(0.1000000000, Decline_b) - 1.0000000000) / (Decline_b * Decline_Di)
    WHEN Fcst_cutoff_unit=''EXP'' AND Decline_method = ''Hyperbolic'' 
    AND fcst_cutoff_value_dec IS NOT NULL AND fcst_cutoff_value_dec <100.0
    AND Decline_b IS NOT NULL AND Decline_Di IS NOT NULL 
     THEN 
       (CASE WHEN Decline_Di <> 0.0000000000 
          THEN
          1.0000000000/(1.0000000000 - POWER(1.0000000000 - fcst_cutoff_value_dec /100.0000000000, Decline_b/12.0000000000)) -
          1.0000000000/(Decline_b * Decline_Di) - 1.0000000000
          ELSE 99999.0000000000 END)
    WHEN Decline_method = ''Hyperbolic'' 
    AND final_rate_dec IS NOT NULL AND product_rate_dec IS NOT NULL
    AND Decline_Di <> 0.0000000000 AND Decline_Di IS NOT NULL
    AND Decline_b IS NOT NULL AND Decline_Di IS NOT NULL 
    AND final_rate_dec > 0.000000000
     THEN
       (CASE WHEN Decline_b <> 0.0000000000 AND Decline_Di <> 0.0000000000
          THEN (POWER(product_rate_dec / final_rate_dec, Decline_b) - 1.0000000000) / (Decline_b * Decline_Di)
          ELSE 0.0000000 END)
    WHEN Fcst_cutoff_unit=''EXP'' AND Decline_method = ''Hyperbolic''
     THEN 0.000000000
    WHEN Decline_method = ''SPD'' 
    AND final_rate_dec IS NOT NULL AND product_rate_dec IS NOT NULL
    AND Decline_Di IS NOT NULL AND Decline_Di>0.0
     THEN (1.0000000000 - final_rate_dec/product_rate_dec) / Decline_Di
    ELSE NULL END) AS fcst_end_t,
  (CASE 
    WHEN (fcst_end_t+prev_end_t) BETWEEN 0.0000000000 AND 600.0000000000 
     THEN CEILING(fcst_end_t) 
    WHEN (fcst_end_t+prev_end_t) > 600.0000000000 
     THEN 600.0000000000 - prev_end_t
    ELSE 0.0000000000 END) AS adj_fcst_end_t,
  (prev_end_t + adj_fcst_end_t) AS inc_fcst_end_t,
  (CASE WHEN Fcst_cutoff_unit IN (''IYR'',''IMO'',''IMOS'') THEN 1 ELSE 0 END) AS inc_fcst_end_t,

  -- Starting Value --
  (CASE
    WHEN product_rate_dec IS NOT NULL
     THEN product_rate_dec 
     ELSE NULL END) AS start_unit,
  -- Ending Value --
  (CASE
    WHEN product_rate_dec IS NOT NULL AND product_rate_dec<=0.00000000
     THEN 0.0000000000

    WHEN Fcst_cutoff_unit = ''BBL''
     THEN
       (CASE 
         WHEN KEYWORD_maxseq=KEYWORD_seq AND final_rate<>''X''
          THEN final_rate
          ELSE start_unit END)  
    WHEN Fcst_formula=''EXP'' AND Fcst_cutoff_unit=''EXP'' 
    AND final_rate_dec IS NULL AND product_rate_dec IS NOT NULL
     THEN 0.00000000000
    WHEN final_rate_dec IS NOT NULL
     THEN final_rate_dec 
    WHEN Decline_method = ''SPD'' AND final_rate_dec IS NULL AND fcst_cutoff_unit = ''EXP''
     THEN 0.00000000000
    WHEN Decline_method = ''SPD'' AND final_rate_dec IS NULL AND fcst_cutoff_unit IN (''YRS'', ''IYR'', ''MOS'', ''MO'', ''IMO'',''IMOS'')
    AND Decline_Di IS NOT NULL AND Decline_Di>0.0
     THEN start_unit *(1.0000000000 -  adj_fcst_end_t * Decline_Di)
    WHEN Decline_method = ''SPD'' AND final_rate_dec IS NOT NULL AND fcst_cutoff_unit = ''EXP''
     THEN 
      (CASE 
        WHEN final_rate_dec<start_unit AND fcst_cutoff_value_dec>0.0
         THEN final_rate_dec
         ELSE 0.00000000 END)
    WHEN Decline_method = ''SPD'' AND final_rate_dec IS NOT NULL AND fcst_cutoff_unit IN (''YRS'', ''IYR'', ''MOS'', ''MO'', ''IMO'',''IMOS'')
     THEN final_rate_dec 
    WHEN Decline_method = ''SPD'' THEN 0.00000000
    WHEN adj_fcst_end_t <= 0.0000000000
     THEN start_unit
    WHEN Decline_method = ''Hyperbolic'' AND adj_fcst_end_t>0.0000000000
     AND Decline_Di <> 0.0000000000 AND (1.0000000000 + Decline_b * Decline_Di * adj_fcst_end_t) >0.0
     AND (final_rate_dec IS NULL OR final_rate_dec <= start_unit)
     THEN start_unit / (POWER(1.0000000000 + Decline_b * Decline_Di * adj_fcst_end_t,(1.0000000000/Decline_b) ))
    WHEN Decline_method = ''Exponential'' AND adj_fcst_end_t>0.0000000000
     AND Decline_Di <> 0.0000000000
     AND (final_rate_dec IS NULL OR final_rate_dec <= start_unit)
     THEN start_unit * EXP(-1.0000000000 * Decline_Di * adj_fcst_end_t)
    WHEN fcst_cutoff_value = ''TO'' AND fcst_cutoff_unit = ''LIFE'' AND final_rate_dec IS NULL
     THEN start_unit
    WHEN fcst_cutoff_unit IN (''YRS'', ''IYR'', ''MOS'', ''MO'', ''IMO'',''IMOS'') AND final_rate_dec IS NULL
     THEN start_unit
    WHEN Decline_method IN (''LOG--TIME'') AND final_rate_dec IS NULL
     THEN start_unit
    ELSE NULL END) AS end_unit
FROM '||TRIM(Cond_SqlStmt)||'
;';


    EXECUTE IMMEDIATE SqlStmt;

    SET sp_sql_code = SQLCODE ;
    SET sp_sql_state = SQLSTATE ;
    SET OUT_Return_CD = SQLCODE ;

    INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
    (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
     :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 
    
    SET cur_seq = cur_seq + 1;
  END WHILE;
  

  -----------------------------------------
  -- Recalc end-time for non-major phase --
  -----------------------------------------
  SET check_point_id = check_point_id + 1;

  SET SqlStmt = '
CREATE MULTISET VOLATILE TABLE AC_ECONOMIC_detail2_vt AS (
SELECT
  PROPNUM, MARJOR, SEQUENCE, QUALIFIER, KEYWORD, KEYWORD_seq,
  KEYWORD_maxseq, product_rate, final_rate, Fcst_cutoff_value,
  Fcst_cutoff_unit, Decline_method, Decline_b, Decline_Di, 
  fcst_start_t, fcst_end_t,
  adj_fcst_end_t, inc_adj_fcst_end_t, inc_fcst_end_t, start_unit,
  end_unit,
  PROP_end_t,
  (CASE WHEN inc_adj_fcst_end_t > PROP_end_t
    THEN
     (CASE WHEN adj_fcst_end_t > (inc_adj_fcst_end_t - PROP_end_t)
       THEN adj_fcst_end_t - (inc_adj_fcst_end_t - PROP_end_t)
       ELSE 0.0000000000 END)
    ELSE adj_fcst_end_t END) AS adj_fcst_end_t2,
  (CASE WHEN inc_adj_fcst_end_t > PROP_end_t
    THEN PROP_end_t
    ELSE inc_adj_fcst_end_t END) AS inc_adj_fcst_end_t2,
  (CASE WHEN adj_fcst_end_t <> adj_fcst_end_t2 AND MARJOR <> KEYWORD
    THEN
     (CASE
       WHEN Decline_method = ''Hyperbolic'' AND adj_fcst_end_t2>0.0000000000
       AND Decline_Di <> 0.0000000000 AND (1.0000000000 + Decline_b * Decline_Di * adj_fcst_end_t) >0.0
       AND end_unit <= start_unit
        THEN start_unit / (POWER(1.0000000000 + Decline_b * Decline_Di * adj_fcst_end_t2,(1.0000000000/Decline_b) ))
       WHEN Decline_method = ''Exponential'' AND adj_fcst_end_t2>0.0000000000
       AND Decline_Di <> 0.0000000000
       AND end_unit <= start_unit
        THEN start_unit * EXP(-1.0000000000 * Decline_Di * adj_fcst_end_t2)
       WHEN Fcst_cutoff_unit = ''LIFE''
        THEN end_unit
       WHEN adj_fcst_end_t > 0.00000000000
        THEN start_unit + (end_unit - start_unit)/adj_fcst_end_t * adj_fcst_end_t2
       ELSE end_unit END)
    ELSE end_unit END) AS end_unit2,
  (CASE WHEN adj_fcst_end_t2 > 1.0000000000
    THEN
     (CASE
       WHEN Decline_method = ''Hyperbolic'' 
       AND Decline_Di <> 0.0000000000 AND (1.0000000000 + Decline_b * Decline_Di * (adj_fcst_end_t2-1.0000000000)) >0.0
       AND end_unit <= start_unit
        THEN start_unit / (POWER(1.0000000000 + Decline_b * Decline_Di * (adj_fcst_end_t2-1.0000000000) ,(1.0000000000/Decline_b) ))
       WHEN Decline_method = ''Exponential'' AND adj_fcst_end_t2>0.0000000000
       AND Decline_Di <> 0.0000000000
       AND end_unit <= start_unit
        THEN start_unit * EXP(-1.0000000000 * Decline_Di * (adj_fcst_end_t2-1.0000000000))
       WHEN Fcst_cutoff_unit = ''LIFE''
        THEN start_unit + (end_unit - start_unit)/adj_fcst_end_t * (adj_fcst_end_t-1.0000000000)
       WHEN adj_fcst_end_t > 0.00000000000
        THEN start_unit + (end_unit - start_unit)/adj_fcst_end_t * (adj_fcst_end_t2-1.0000000000)
       ELSE end_unit END)
    ELSE end_unit END) AS end_unit1
FROM
(--t--
SELECT	
  PROPNUM, MARJOR, SEQUENCE, QUALIFIER, KEYWORD, KEYWORD_seq,
  KEYWORD_maxseq, product_rate, final_rate, Fcst_cutoff_value,
  Fcst_cutoff_unit, Decline_method, Decline_b, Decline_Di, 
  fcst_start_t, fcst_end_t,
  adj_fcst_end_t, inc_adj_fcst_end_t, inc_fcst_end_t, start_unit,
  e
 nd_unit,
  MAX(CASE WHEN MARJOR = KEYWORD THEN inc_adj_fcst_end_t ELSE NULL END) OVER
   (PARTITION BY PROPNUM,QUALIFIER) AS PROP_end_t,
  RANK() OVER (PARTITION BY PROPNUM,QUALIFIER, KEYWORD ORDER BY SEQUENCE) AS rnk
FROM AC_ECONOMIC_detail_vt
WHERE ((adj_fcst_end_t > 0.0000000000) OR
       (MARJOR = KEYWORD AND KEYWORD_seq = 1) )
)t
WHERE adj_fcst_end_t2 > 0.0000000000 OR rnk =1
) WITH DATA
PRIMARY INDEX (PROPNUM)
ON COMMIT PRESERVE ROWS
;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Recalc end-time for non-major phase ';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 

  -------------------------------------------------------
  -- Create volatile tables: AC_Recalc_Ratio_Start_vt  --
  -------------------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
CREATE MULTISET VOLATILE TABLE AC_Recalc_Ratio_Start_vt AS
(
SELECT
  t.PROPNUM, t.MARJOR, t.SEQUENCE, t.QUALIFIER, t.KEYWORD, t.KEYWORD_seq, t.adj_keyword,
  t.calc_t,
  (t.calc_t - s.fcst_start_t)+1.0000000000 AS delta_t,
  (CASE WHEN s.PROPNUM IS NOT NULL THEN
     (CASE
       WHEN s.Decline_method = ''Hyperbolic'' AND delta_t>0.0000000000
       AND s.Decline_Di > 0.0000000000 AND (1.0000000000 + s.Decline_b * s.Decline_Di * delta_t) >0.0
       AND s.end_unit <= s.start_unit
        THEN s.start_unit / (POWER(1.0000000000 + s.Decline_b * s.Decline_Di * delta_t,(1.0000000000/s.Decline_b) ))
       WHEN s.Decline_method = ''Exponential'' AND delta_t>0.0000000000
       AND s.Decline_Di > 0.0000000000
       AND s.end_unit <= s.start_unit
        THEN s.start_unit * EXP(-1.0000000000 * s.Decline_Di * delta_t)
       WHEN s.Decline_method = ''SPD'' AND s.end_unit>0.0
       AND s.Decline_Di IS NOT NULL AND s.Decline_Di>0.0
        THEN s.start_unit *(1.0000000000 -  delta_t * s.Decline_Di)
       WHEN s.Decline_method = ''SPD'' AND s.end_unit<=0.0
        THEN 0.0000000000
       ELSE s.start_unit END)
   ELSE 0.0000000000 END) * t.start_unit AS ratio_to_unit
FROM
(
SELECT	
  PROPNUM, MARJOR, SEQUENCE, QUALIFIER, KEYWORD, KEYWORD_seq,
  KEYWORD_maxseq, product_rate, final_rate, Fcst_cutoff_value,
  Fcst_cutoff_unit, Decline_method, Decline_b, Decline_Di, 
  start_unit, 
  end_unit2 AS end_unit,
  SUBSTR(KEYWORD,1,3) as adj_keyword,
  SUBSTR(KEYWORD,5,3) as dep_keyword,
  fcst_start_t AS calc_t
FROM AC_ECONOMIC_detail2_vt
WHERE SUBSTR(KEYWORD,4,1) =''/''
) t
LEFT JOIN
(SELECT	
  PROPNUM, SEQUENCE, QUALIFIER, KEYWORD, KEYWORD_seq,
  Decline_method, Decline_b, Decline_Di, 
  start_unit, 
  end_unit2 AS end_unit,
  fcst_start_t,inc_adj_fcst_end_t2
FROM AC_ECONOMIC_detail2_vt
WHERE SUBSTR(KEYWORD,4,1) <>''/''
) s
ON (t.PROPNUM = s.PROPNUM
AND t.QUALIFIER = s.QUALIFIER
AND t.dep_keyword = s.keyword
AND t.calc_t >=s.fcst_start_t 
AND t.calc_t <=s.inc_adj_fcst_end_t2)
) WITH DATA
PRIMARY INDEX (PROPNUM)
ON COMMIT PRESERVE ROWS
;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Recalc starting unit for ratio formula ';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 

  -------------------------------------------------------
  -- Create volatile tables: AC_Recalc_Ratio_END_vt  --
  -------------------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
CREATE MULTISET VOLATILE TABLE ac_recalc_ratio_end_vt AS
(
SELECT
  t.PROPNUM, t.MARJOR, t.SEQUENCE, t.QUALIFIER, t.KEYWORD, t.KEYWORD_seq, t.adj_keyword,
  t.calc_t,
  (t.calc_t - s.fcst_start_t)+1.0000000000 AS delta_t,
  (t.calc_t - s.fcst_start_t) AS delta_t1,
  (CASE WHEN s.PROPNUM IS NOT NULL THEN
     (CASE
       WHEN s.Decline_method = ''Hyperbolic'' AND delta_t>0.0000000000
       AND s.Decline_Di > 0.0000000000 AND (1.0000000000 + s.Decline_b * s.Decline_Di * delta_t) >0.0
       AND s.end_unit <= s.start_unit
        THEN s.start_unit / (POWER(1.0000000000 + s.Decline_b * s.Decline_Di * delta_t,(1.0000000000/s.Decline_b) ))
       WHEN s.Decline_method = ''Exponential'' AND delta_t>0.0000000000
       AND s.Decline_Di > 0.0000000000
       AND s.end_unit <= s.start_unit
        THEN s.start_unit * EXP(-1.0000000000 * s.Decline_Di * delta_t)

       WHEN s.Decline_method = ''SPD'' AND s.end_unit>0.0
       AND s.Decline_Di IS NOT NULL AND s.Decline_Di>0.0
        THEN s.start_unit *(1.0000000000 -  delta_t * s.Decline_Di)
       WHEN s.Decline_method = ''SPD'' AND s.end_unit<=0.0
        THEN 0.0000000000
       ELSE s.end_unit END)
   ELSE 0.0000000000 END) * t.end_unit AS ratio_to_unit,
  (CASE WHEN s.PROPNUM IS NOT NULL THEN
     (CASE
       WHEN s.Decline_method = ''Hyperbolic'' AND delta_t>0.0000000000
       AND s.Decline_Di > 0.0000000000 AND (1.0000000000 + s.Decline_b * s.Decline_Di * delta_t1) >0.0
       AND s.end_unit <= s.start_unit
        THEN s.start_unit / (POWER(1.0000000000 + s.Decline_b * s.Decline_Di * delta_t1,(1.0000000000/s.Decline_b) ))
       WHEN s.Decline_method = ''Exponential'' AND delta_t1>0.0000000000
       AND s.Decline_Di > 0.0000000000
       AND s.end_unit <= s.start_unit
        THEN s.start_unit * EXP(-1.0000000000 * s.Decline_Di * delta_t1)
       WHEN s.Decline_method = ''SPD'' AND s.end_unit>0.0
       AND s.Decline_Di IS NOT NULL AND s.Decline_Di>0.0
        THEN s.start_unit *(1.0000000000 -  delta_t1 * s.Decline_Di)
       WHEN s.Decline_method = ''SPD'' AND s.end_unit<=0.0
        THEN 0.0000000000
       ELSE s.end_unit END)
   ELSE 0.0000000000 END) * t.end_unit1 AS ratio_to_unit1
FROM
(
SELECT	
  PROPNUM, MARJOR, SEQUENCE, QUALIFIER, KEYWORD, KEYWORD_seq,
  KEYWORD_maxseq, product_rate, final_rate, Fcst_cutoff_value,
  Fcst_cutoff_unit, Decline_method, Decline_b, Decline_Di, 
  start_unit, 
  end_unit2 AS end_unit,
  end_unit1,
  SUBSTR(KEYWORD,1,3) as adj_keyword,
  SUBSTR(KEYWORD,5,3) as dep_keyword,
  inc_adj_fcst_end_t2 AS calc_t
FROM AC_ECONOMIC_detail2_vt
WHERE SUBSTR(KEYWORD,4,1) =''/''
) t
LEFT JOIN
(SELECT	
  PROPNUM, SEQUENCE, QUALIFIER, KEYWORD, KEYWORD_seq,
  Decline_method, Decline_b, Decline_Di, 
  start_unit, 
  end_unit2 AS end_unit,
  fcst_start_t,inc_adj_fcst_end_t2
FROM AC_ECONOMIC_detail2_vt
WHERE SUBSTR(KEYWORD,4,1) <>''/''
) s
ON (t.PROPNUM = s.PROPNUM
AND t.QUALIFIER = s.QUALIFIER
AND t.dep_keyword = s.keyword
AND t.calc_t >=s.fcst_start_t 
AND t.calc_t <=s.inc_adj_fcst_end_t2)
) WITH DATA
PRIMARY INDEX (PROPNUM)
ON COMMIT PRESERVE ROWS
;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Recalc ending unit for ratio formula ';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  -----------------------------------------
  -- Create adjusted AC_ECONOMIC_detail  --
  -----------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
CREATE MULTISET TABLE trng_oil_industry.AC_ECONOMIC_detail AS
(
SELECT
  d.PROPNUM, d.MARJOR, d.SEQUENCE, d.QUALIFIER, 
  COALESCE(s.adj_keyword, e.adj_keyword, d.KEYWORD) AS KEYWORD, 
  d.KEYWORD_seq, d.KEYWORD_maxseq, 
  d.product_rate, d.final_rate, 
  d.Fcst_cutoff_value, d.Fcst_cutoff_unit, 
  d.Decline_method, d.Decline_b, d.Decline_Di, 
  d.fcst_start_t,  d.fcst_end_t, 
  d.adj_fcst_end_t, d.inc_adj_fcst_end_t, d.inc_fcst_end_t,
  COALESCE(s.ratio_to_unit, d.start_unit) AS start_unit, 
  COALESCE(e.ratio_to_unit, d.end_unit) AS end_unit,
  d.PROP_end_t, d.adj_fcst_end_t2, d.inc_adj_fcst_end_t2,
  COALESCE(e.ratio_to_unit, d.end_unit2) AS end_unit2,
  COALESCE(e.ratio_to_unit1, d.end_unit1) AS end_unit1
FROM AC_ECONOMIC_detail2_vt d
LEFT JOIN AC_Recalc_Ratio_Start_vt  s
ON (d.PROPNUM   = s.PROPNUM
AND d.QUALIFIER = s.QUALIFIER
AND d.SEQUENCE  = s.SEQUENCE)
LEFT JOIN AC_Recalc_Ratio_End_vt  e
ON (d.PROPNUM   = e.PROPNUM
AND d.QUALIFIER = e.QUALIFIER
AND d.SEQUENCE  = e.SEQUENCE)
) WITH DATA
PRIMARY INDEX (PROPNUM)
;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Create adjusted AC_ECONOMIC_detail  ';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 



  -----------------------------------------------
  -- Determine the forecast formula direction0  --
  -----------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
  INSERT INTO AC_ECONOMIC_direction0_vt
  SELECT
     PROPNUM, MARJOR, SEQUENCE, QUALIFIER, 
     KEYWORD, KEYWORD_seq, 1 AS KEYWORD_subseq,
     (CASE
     WHEN end_unit2 = start_unit THEN ''F''
     WHEN end_unit2 < start_unit THEN ''D''
     ELSE ''U'' END) AS dir
   FROM trng_oil_industry.AC_ECONOMIC_detail
   WHERE (adj_fcst_end_t >1.0000 OR KEYWORD_seq>1)
   UNION ALL
   SELECT
     b.PROPNUM, b.MARJOR, b.SEQUENCE, b.QUALIFIER, 
     b.KEYWORD, b.KEYWORD_seq, 2 AS KEYWORD_subseq,
     (CASE
     WHEN b.end_unit > f.start_unit AND b.end_unit>0.0 AND f.start_unit/b.end_unit >0.90 THEN ''F''
     WHEN b.end_unit < f.start_unit AND b.start_unit>0.0 AND b.end_unit/f.start_unit >0.90 THEN ''F''
     WHEN b.end_unit > f.start_unit THEN ''D''
     WHEN b.end_unit < f.start_unit THEN ''U''
     ELSE ''F'' END) AS dir
   FROM trng_oil_industry.AC_ECONOMIC_detail b,
      trng_oil_industry.AC_ECONOMIC_detail f
   WHERE b.PROPNUM = f.PROPNUM
   AND   b.QUALIFIER = f.QUALIFIER
   AND   b.KEYWORD = f.KEYWORD
   AND   b.KEYWORD_seq+1 = f.KEYWORD_seq
  ;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Determine the forecast formula direction0   ';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  -----------------------------------------------
  -- Determine the forecast formula direction  --
  -----------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
  INSERT INTO AC_ECONOMIC_direction_vt
  SELECT
     PROPNUM, MARJOR, SEQUENCE, QUALIFIER, 
     KEYWORD, KEYWORD_seq, KEYWORD_subseq,
     dir,
     LAG(dir,1) OVER (PARTITION BY PROPNUM, QUALIFIER, KEYWORD
            ORDER BY KEYWORD_seq, KEYWORD_subseq) AS prev_dir
  FROM AC_ECONOMIC_direction0_vt 
  WHERE dir<>''F'' OR (KEYWORD_seq = 1 AND KEYWORD_subseq = 1)
  ;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Determine the forecast formula direction   ';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  -------------------------------------------
  -- Determine the phases processing order --
  -------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = '
  CREATE MULTISET TABLE trng_oil_industry.AC_KEYWORD_PATH AS
  (
  SELECT * FROM nPath (
    ON 
      (SELECT
         PROPNUM, QUALIFIER, MAJOR, SEQUENCE,
         KEYWORD, 
         LAG(KEYWORD,1) OVER (PARTITION BY PROPNUM, QUALIFIER ORDER BY SEQUENCE) AS prev_KEYWORD
       FROM trng_oil_industry.AC_ECONOMIC_DC3
       WHERE keyword_seq = 1)
      PARTITION BY PROPNUM, QUALIFIER
      ORDER BY SEQUENCE
    USING 
    Mode ( NONOVERLAPPING )
    Pattern (''K+.A*'')
    Symbols (
      prev_KEYWORD IS NULL AS K,
      prev_KEYWORD = KEYWORD AS DUP,
      TRUE AS A
    )
    Result (
      FIRST(PROPNUM OF ANY (K)) AS PROPNUM,
      FIRST(QUALIFIER OF ANY (K)) AS QUALIFIER,
      FIRST(MAJOR OF ANY (K)) AS Major,
      ACCUMULATE (KEYWORD OF  ANY (K,A)) AS Keyword_order
    )
  ) AS dt
  ) WITH DATA
  PRIMARY INDEX (PROPNUM)
  ;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Determine the phases processing order  ';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  --------------------------------------------------
  -- Determine the direction npath for each phase --
  --------------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
  CREATE MULTISET TABLE trng_oil_industry.AC_Phase_dir AS
  (
  SELECT * FROM nPath (
    ON (SELECT * FROM AC_ECONOMIC_direction_vt 
        WHERE (dir <> prev_dir OR prev_dir IS NULL)
       )
      PARTITION BY PROPNUM, QUALIFIER, KEYWORD
      ORDER BY KEYWORD_seq, KEYWORD_subseq
    USING 
    Mode ( NONOVERLAPPING )
    Pattern (''K+.A*'')
    Symbols (
      prev_dir IS NULL AS K,
      prev_dir = dir AS DUP,
      TRUE AS A
    )
    Result (
      FIRST(PROPNUM OF ANY (K)) AS PROPNUM,
      FIRST(QUALIFIER OF ANY (K)) AS QUALIFIER,
      FIRST(MARJOR OF ANY (K)) AS MARJOR,
      FIRST(KEYWORD OF ANY (K)) AS KEYWORD,
      ACCUMULATE (dir OF  ANY (K,A)) AS fcst_order
    )
  ) AS dt
  ) WITH DATA
  PRIMARY INDEX (PROPNUM)
  ;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Determine the direction npath for each phase   ';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 





  ---------------------------------------
  -- Create Feature table AC_features  --
  ---------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
CREATE MULTISET TABLE trng_oil_industry.AC_features AS (
SELECT
  u.PROPNUM, u.QUALIFIER, 
  u.MARJOR, 
  TRIM(p.keyword_order) AS keyword_order,
  total_formula_cnt,
  oil_formula_cnt, gas_formula_cnt, wtr_formula_cnt,
  oilratio_formula_cnt, gasratio_formula_cnt, wtrratio_formula_cnt,
  start_oil_rate, end_oil_rate, peak_oil_rate, end_oil_rate1,
  start_oil_time, end_oil_time, peak_oil_time,
  start_gas_rate, end_gas_rate, peak_gas_rate, end_gas_rate1,
  start_gas_time, end_gas_time, peak_gas_time,
  start_wtr_rate, end_wtr_rate, peak_wtr_rate, end_wtr_rate1,
  start_wtr_time, end_wtr_time, peak_wtr_time,
  (CASE WHEN u.MARJOR = ''OIL'' THEN peak_oil_time ELSE peak_gas_time END) AS peak_major_time,
  (CASE WHEN start_oil_rate > 0.00 
    THEN start_gas_rate / start_oil_rate 
    ELSE 0.0000000000 END) AS start_gor_rate,
  (CASE WHEN end_oil_rate > 0.00 
    THEN end_gas_rate / end_oil_rate
    ELSE 0.0000000000 END) AS end_gor_rate,
  (CASE WHEN end_oil_rate1 > 0.00 
    THEN end_gas_rate1 / end_oil_rate1
    ELSE 0.0000000000 END) AS end_gor_rate1,
  (CASE WHEN start_oil_rate > 0.00 
    THEN  peak_gas_rate/ peak_oil_rate
    ELSE 0.0000000000 END) AS peak_gor_rate,
  COALESCE(sw_oil_unit, 0.0000000000) AS sw_oil_unit,
  COALESCE(sw_gas_unit, 0.0000000000) AS sw_gas_unit,
  COALESCE(sw_wtr_unit, 0.0000000000) AS sw_wtr_unit,
  COALESCE(oil_fcst_order,''NONE'') AS oil_fcst_order,
  COALESCE(gas_fcst_order,''NONE'') AS gas_fcst_order,
  COALESCE(wtr_fcst_order,''NONE'') AS wtr_fcst_order
FROM
(--u--
SELECT
  t.PROPNUM, t.QUALIFIER, t.MARJOR, 
  COUNT(0) AS total_formula_cnt,
  SUM(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''OIL'' THEN 1 ELSE 0 END) AS oil_formula_cnt,
  SUM(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''GAS'' THEN 1 ELSE 0 END) AS gas_formula_cnt,
  SUM(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''WTR'' THEN 1 ELSE 0 END) AS wtr_formula_cnt,
  SUM(CASE WHEN SUBSTR(t.KEYWORD,1,4) = ''OIL/'' THEN 1 ELSE 0 END) AS oilratio_formula_cnt,
  SUM(CASE WHEN SUBSTR(t.KEYWORD,1,4) = ''GAS/'' THEN 1 ELSE 0 END) AS gasratio_formula_cnt,
  SUM(CASE WHEN SUBSTR(t.KEYWORD,1,4) = ''WTR/'' THEN 1 ELSE 0 END) AS wtrratio_formula_cnt,
  MAX(CASE WHEN t.KEYWORD_seq = min_KEYWORD_seq
       AND SUBSTR(t.KEYWORD,1,3) = ''OIL'' 
        THEN start_unit ELSE NULL END) AS start_oil_rate,
  MAX(CASE WHEN t.KEYWORD_seq = t.max_KEYWORD_seq
       AND SUBSTR(t.KEYWORD,1,3) = ''OIL'' 
        THEN end_unit ELSE NULL END) AS end_oil_rate,
  MAX(CASE WHEN t.KEYWORD_seq = t.max_KEYWORD_seq
       AND SUBSTR(t.KEYWORD,1,3) = ''OIL'' 
        THEN end_unit1 ELSE NULL END) AS end_oil_rate1,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''OIL'' THEN
       (CASE WHEN start_unit > end_unit THEN start_unit ELSE end_unit END)
        ELSE NULL END) AS peak_oil_rate,
  MIN(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''OIL'' 
        THEN fcst_start_t ELSE NULL END) AS start_oil_time,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''OIL'' 
        THEN period ELSE NULL END) AS end_oil_time,
  MAX(CASE WHEN t.KEYWORD_seq = min_KEYWORD_seq
       AND SUBSTR(t.KEYWORD,1,3) = ''GAS'' 
        THEN start_unit ELSE NULL END) AS start_gas_rate,
  MAX(CASE WHEN t.KEYWORD_seq = max_KEYWORD_seq
       AND SUBSTR(t.KEYWORD,1,3) = ''GAS'' 
        THEN end_unit ELSE NULL END) AS end_gas_rate,
  MAX(CASE WHEN t.KEYWORD_seq = max_KEYWORD_seq
       AND SUBSTR(t.KEYWORD,1,3) = ''GAS'' 
        THEN end_unit1 ELSE NULL END) AS end_gas_rate1,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''GAS'' THEN
       (CASE WHEN start_unit > end_unit THEN start_unit ELSE end_unit END)
        ELSE NULL END) AS peak_gas_rate,
  MIN(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''GAS'' 
        THEN fcst_start_t ELSE NULL END) AS start_gas_time,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''GAS'' 
        THEN period ELSE NULL END) AS end_gas_time,
  MAX(CASE WHEN t.KEYWORD_seq = min_KEYWORD_seq
       AND SUBSTR(t.KEYWORD,1,3) = ''WTR'' 
        THEN start_unit ELSE NULL END) AS start_wtr_rate,
  MAX(CASE WHEN t.KEYWORD_seq = max_KEYWORD_seq
       AND SUBSTR(t.KEYWORD,1,3) = ''WTR'' 
        THEN end_unit ELSE NULL END) AS end_wtr_rate,
  MAX(CASE WHEN t.KEYWORD_seq = max_KEYWORD_seq
       AND SUBSTR(t.KEYWORD,1,3) = ''WTR'' 
        THEN end_unit1 ELSE NULL END) AS end_wtr_rate1,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''WTR'' THEN
       (CASE WHEN start_unit > end_unit THEN start_unit ELSE end_unit END)
        ELSE NULL END) AS peak_wtr_rate,
  MIN(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''WTR'' 
        THEN fcst_start_t ELSE NULL END) AS start_wtr_time,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''WTR'' 
        THEN period ELSE NULL END) AS end_wtr_time,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''OIL'' AND peak_rnk = 1
        THEN peak_time ELSE NULL END) AS peak_oil_time,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''GAS'' AND peak_rnk = 1
        THEN peak_time ELSE NULL END) AS peak_gas_time,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''WTR'' AND peak_rnk = 1
        THEN peak_time ELSE NULL END) AS peak_wtr_time,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''OIL'' AND prev_end_unit IS NOT NULL AND start_unit > prev_end_unit
        THEN (start_unit - prev_end_unit) ELSE NULL END) AS sw_oil_unit,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''GAS'' AND prev_end_unit IS NOT NULL AND start_unit
  > prev_end_unit
        THEN (start_unit - prev_end_unit) ELSE NULL END) AS sw_gas_unit,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''WTR'' AND prev_end_unit IS NOT NULL AND start_unit > prev_end_unit
        THEN (start_unit - prev_end_unit) ELSE NULL END) AS sw_wtr_unit,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''OIL'' THEN TRIM(fcst_order) ELSE NULL END) AS oil_fcst_order,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''GAS'' THEN TRIM(fcst_order) ELSE NULL END) AS gas_fcst_order,
  MAX(CASE WHEN SUBSTR(t.KEYWORD,1,3) = ''WTR'' THEN TRIM(fcst_order) ELSE NULL END) AS wtr_fcst_order
FROM 
 (--t--
  SELECT
    PROPNUM, QUALIFIER, MARJOR,
    KEYWORD, KEYWORD_seq,
    start_unit, end_unit2 AS end_unit, end_unit1,
    fcst_start_t, inc_adj_fcst_end_t2 AS period,
    MIN(KEYWORD_seq) OVER (PARTITION BY PROPNUM, QUALIFIER, MARJOR, KEYWORD) As min_KEYWORD_seq,
    MAX(KEYWORD_seq) OVER (PARTITION BY PROPNUM, QUALIFIER, MARJOR, KEYWORD) As max_KEYWORD_seq,
    (CASE WHEN end_unit2 > start_unit THEN end_unit2 ELSE start_unit END) AS peak_unit,
    (CASE WHEN end_unit2 > start_unit THEN inc_adj_fcst_end_t2 ELSE fcst_start_t END) AS peak_time,
    RANK() OVER (PARTITION BY PROPNUM, QUALIFIER, MARJOR, KEYWORD
                 ORDER BY peak_unit DESC, peak_time) as peak_rnk,
    LAG(end_unit2,1) OVER (PARTITION BY PROPNUM, QUALIFIER, MARJOR, KEYWORD
                 ORDER BY KEYWORD_seq) AS prev_end_unit
  FROM trng_oil_industry.AC_ECONOMIC_detail) t 
  LEFT JOIN trng_oil_industry.AC_Phase_dir d
  ON (t.PROPNUM = d.PROPNUM
  AND t.QUALIFIER = d.QUALIFIER
  AND t.KEYWORD = d.KEYWORD)
  GROUP BY 1,2,3) u
  INNER JOIN
  trng_oil_industry.AC_KEYWORD_PATH p
  ON (u.PROPNUM = p.PROPNUM
  AND u.QUALIFIER = p.QUALIFIER)
) WITH DATA
PRIMARY INDEX (PROPNUM)
;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Create Feature table AC_features ';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 

END;  

  ----------------
  -- End of SP  --
  ----------------

END;

REPLACE PROCEDURE trng_oil_industry.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                
 AC_data_preparation_sp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                     
 
( 
  OUT OUT_Return_CD         INTEGER
)
BEGIN
  DECLARE SqlStmt                 VARCHAR(20000);
  DECLARE Cond_SqlStmt            VARCHAR(1000);
  DECLARE proc_name               VARCHAR(50);

  DECLARE error_msg_txt           VARCHAR(100);
  DECLARE log_msg_txt             VARCHAR(100);
  DECLARE sp_sql_code             INTEGER;
  DECLARE sp_sql_state            VARCHAR(10);
  DECLARE sp_ins_activity_count   BIGINT;
  DECLARE sp_upd_activity_count   BIGINT;
  DECLARE check_point_id          INTEGER DEFAULT 0;
  DECLARE rc                      INTEGER;
  DECLARE max_seq                 INTEGER;
  DECLARE cur_seq                 INTEGER;

  ---------------------------------
  -- SQL EXCEPTION HANDLER BLOCK --
  ---------------------------------
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
      SET sp_sql_code = SQLCODE ;
      SET sp_sql_state = SQLSTATE ;
      SET OUT_Return_CD = SQLCODE ;
      SET proc_name = 'AC_data_preparation_sp';

      INSERT INTO trng_oil_industry.Proc_Error_Tbl
      (CURRENT_TIMESTAMP, proc_name, sp_sql_state, sp_sql_code, 
       sp_ins_activity_count, error_msg_txt, SqlStmt);

    END;

  --------------
  -- START SP --
  --------------
LABEL_AC_DATA_PREPARATION:
BEGIN 

  SET proc_name = 'AC_data_preparation_sp';
  SET sp_ins_activity_count = 0 ;
  SET sp_upd_activity_count = 0 ;
  SET OUT_Return_CD = 0 ;
  SET sp_sql_code = 0 ;
  SET check_point_id  = 0;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,0, 0,
   0, 'Starting Stored Procedure', NULL); 


  --------------------------------------
  -- Remove Existing volation tables  --
  --------------------------------------
  CALL trng_oil_industry.AC_drop_vt_sp('ac_economic_vt');

  -----------------------------------------------
  -- Create volatile tables: well_calc_info_vt --
  -----------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = ' 
  CREATE MULTISET VOLATILE TABLE ac_economic_vt
  (
      PROPNUM VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC,
      SECTION INTEGER,
      SEQUENCE INTEGER,
      QUALIFIER VARCHAR(7) CHARACTER SET LATIN CASESPECIFIC,
      KEYWORD VARCHAR(9) CHARACTER SET LATIN CASESPECIFIC,
      ALT_KEYWORD VARCHAR(9) CHARACTER SET LATIN CASESPECIFIC,
      KEYWORD_seq INTEGER,
      EXPRESSION VARCHAR(48) CHARACTER SET LATIN CASESPECIFIC,
      product_rate VARCHAR(48) CHARACTER SET LATIN CASESPECIFIC,
      final_rate VARCHAR(48) CHARACTER SET LATIN CASESPECIFIC,
      rate_unit VARCHAR(48) CHARACTER SET LATIN CASESPECIFIC,
      Fcst_cutoff_value VARCHAR(48) CHARACTER SET LATIN CASESPECIFIC,
      Fcst_cutoff_unit VARCHAR(48) CHARACTER SET LATIN CASESPECIFIC,
      Fcst_formula VARCHAR(48) CHARACTER SET LATIN CASESPECIFIC,
      Fcst_param VARCHAR(48) CHARACTER SET LATIN CASESPECIFIC,
      exp7_start  INTEGER
  )
  PRIMARY INDEX ( PROPNUM )
  ON COMMIT PRESERVE ROWS;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': CREATE VOLATILE TABLE: ac_economic_vt';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  ------------------------
  -- CLEAR Output table --
  ------------------------
  SET check_point_id = check_point_id + 1;

  SET SqlStmt = 'DELETE FROM trng_oil_industry.AC_ECONOMIC_DC3;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': CLEAR AC_ECONOMIC_DC3';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  SET check_point_id = check_point_id + 1;
  SET SqlStmt = 'DELETE FROM trng_oil_industry.ac_exception;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': CLEAR ac_exception';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  ----------------------------
  -- Prepare ac_economic_vt --
  ----------------------------
  SET check_point_id = check_point_id + 1;

  SET SqlStmt = '
  INSERT INTO ac_economic_vt
  SELECT    
    PROPNUM, SECTION, SEQUENCE, QUALIFIER,    
    KEYWORD, ALT_KEYWORD,    
    SUM(CASE WHEN prev_ALT_KEYWORD IS NULL OR prev_ALT_KEYWORD<>ALT_KEYWORD THEN 0 ELSE 1 END) OVER    
     (PARTITION BY PROPNUM,QUALIFIER,ALT_KEYWORD  ORDER BY SEQUENCE ROWS UNBOUNDED PRECEDING)+1 AS KEYWORD_seq,    
    EXPRESSION,    
    (CASE WHEN INSTR(expression,'' '',1,1) >0     
       THEN substr(expression,1,INSTR(expression,'' '',1,1)-1) ELSE expression END) AS product_rate,    
    (CASE WHEN INSTR(expression,'' '',1,2) >0
       THEN substr(expression,INSTR(expression,'' '',1,1)+1,INSTR(expression,'' '',1,2)-INSTR(expression,'' '',1,1)-1) ELSE NULL END) AS final_rate,    
    (CASE WHEN INSTR(expression,'' '',1,3) >0     
       THEN substr(expression,INSTR(expression,'' '',1,2)+1,INSTR(expression,'' '',1,3)-INSTR(expression,'' '',1,2)-1) ELSE NULL END) AS rate_unit,    
    (CASE WHEN INSTR(expression,'' '',1,4) >0     
       THEN substr(expression,INSTR(expression,'' '',1,3)+1,INSTR(expression,'' '',1,4)-INSTR(expression,'' '',1,3)-1) ELSE NULL END) AS Fcst_cutoff_value,    
    (CASE WHEN INSTR(expression,'' '',1,5) >0     
      THEN substr(expression,INSTR(expression,'' '',1,4)+1,INSTR(expression,'' '',1,5)-INSTR(expression,'' '',1,4)-1) ELSE NULL END) AS Fcst_cutoff_unit,    
    (CASE WHEN INSTR(expression,'' '',1,6) >0     
      THEN substr(expression,INSTR(expression,'' '',1,5)+1,INSTR(expression,'' '',1,6)-INSTR(expression,'' '',1,5)-1) ELSE NULL END) AS Fcst_formula,    
    (CASE WHEN INSTR(expression,'' '',1,6) >0     
      THEN substr(expression,INSTR(expression,'' '',1,6)+1, 500) ELSE NULL END) AS Fcst_param,
    INSTR(expression,'' '',1,6) AS exp7_start
  FROM    
  ( -- u --    
  SELECT    
    t.PROPNUM, t.SECTION, t.SEQUENCE, t.QUALIFIER,    
    t.KEYWORD,    
    (CASE WHEN t.KEYWORD = ''"'' THEN r.KYWRD ELSE t.KEYWORD END) AS ALT_KEYWORD,    
    t.EXPRESSION,    
    LAG(ALT_KEYWORD,1) OVER (PARTITION BY t.PROPNUM, t.QUALIFIER ORDER BY t.SEQUENCE) AS prev_ALT_KEYWORD    
  FROM    
    (SELECT    
       PROPNUM, SECTION, SEQID AS SEQUENCE, QUALIFIER,    
       KYWRD AS KEYWORD, EXPRESSION,    
       MAX(CASE WHEN KEYWORD=''"'' THEN NULL ELSE SEQUENCE END) OVER   
        (PARTITION BY PROPNUM,QUALIFIER   
         ORDER BY SEQUENCE ROWS UNBOUNDED PRECEDING) as last_seq    
     FROM trng_oil_industry.AC_ECONOMIC  
     WHERE SECTION = 4  
     ) t,     
     trng_oil_industry.AC_ECONOMIC r    
  WHERE t.PROPNUM = r.PROPNUM    
  AND   t.last_seq = r.SEQID    
  AND   t.QUALIFIER = r.QUALIFIER  
  AND   r.SECTION = 4) u
  ;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Prepare ac_economic_vt';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  --------------------------
  -- Prepare ac_exception --
  --------------------------
  SET check_point_id = check_point_id + 1;

  SET SqlStmt = '
  INSERT INTO trng_oil_industry.ac_exception
  SELECT
   v.propnum, v.QUALIFIER, p.MAJOR,
   ''Line expression does not have expected 7 terms'' 
  FROM ac_economic_vt v, trng_oil_industry.AC_PROPERTY p  
  WHERE v.propnum = p.propnum  
  AND   ALT_KEYWORD<>''START''
  AND   exp7_start = 0.0
  ;';


  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Prepare ac_exception for less than 7 terms';
  SET error_msg_txt = 'Error: ' || log_msg_txt;


  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  -----------------------------
  -- Prepare AC_ECONOMIC_DC3 --
  -----------------------------
  SET check_point_id = check_point_id + 1;

  SET SqlStmt = '
INSERT INTO trng_oil_industry.AC_ECONOMIC_DC3
SELECT  
  PROPNUM, major, SECTION, SEQUENCE, QUALIFIER, KEYWORD,   
  RANK() OVER (PARTITION BY PROPNUM, SECTION, QUALIFIER, KEYWORD
               ORDER BY KEYWORD_seq) AS KEYWORD_seq,
  MAX(KEYWORD_seq) OVER (PARTITION BY PROPNUM, SECTION, QUALIFIER, KEYWORD) AS KEYWORD_maxseq,  
  product_rate,  final_rate, rate_unit,  
  Fcst_cutoff_value, Fcst_cutoff_unit,   
  Fcst_formula, Fcst_param,  
  (CASE    
    WHEN rate_unit = ''MM/M''
      THEN product_rate_dec * 1000.00000000000 
    WHEN rate_unit = ''MM/D''
      THEN product_rate_dec * 1000.00000000000 *365.0000000000/12.0000000000  
    WHEN rate_unit = ''MM/Y''
      THEN product_rate_dec * 1000.00000000000 /12.0000000000  
    WHEN SUBSTR(rate_unit,3,1) = ''D''   
      THEN product_rate_dec*365.0000000000/12.0000000000  
    WHEN SUBSTR(rate_unit,3,1) = ''Y''   
      THEN product_rate_dec/12.0000000000  
    WHEN SUBSTR(rate_unit,2,3) = ''/MM''
      THEN product_rate_dec / 1000.00000000000
    ELSE product_rate_dec END) AS product_rate_dec,  
  (CASE   
    WHEN rate_unit = ''MM/M''
      THEN final_rate_dec * 1000.00000000000 
    WHEN rate_unit = ''MM/D''
      THEN final_rate_dec * 1000.00000000000 *365.0000000000/12.0000000000  
    WHEN rate_unit = ''MM/Y''
      THEN final_rate_dec * 1000.00000000000 /12.0000000000  
    WHEN SUBSTR(rate_unit,3,1) = ''D''   
      THEN final_rate_dec*365.0000000000/12.0000000000  
    WHEN SUBSTR(rate_unit,3,1) = ''Y''   
      THEN final_rate_dec/12.0000000000  
    WHEN SUBSTR(rate_unit,2,3) = ''/MM''
      THEN final_rate_dec / 1000.00000000000
    ELSE final_rate_dec END) AS final_rate_dec,  
  Fcst_cutoff_value_dec, 
  Fcst_param_dec,
  Start_expression, start_year, start_month,  
  (CASE   
    WHEN SUBSTR(Fcst_formula,1,2) = ''B/'' THEN
     (CASE WHEN CAST(SUBSTR(Fcst_formula,3,10) AS FLOAT) = 0.0 
       THEN ''Exponential''
       ELSE ''Hyperbolic'' END)
    WHEN SUBSTR(Fcst_formula,1,2) = ''H/'' THEN
     (CASE WHEN CAST(SUBSTR(Fcst_formula,3,10) AS FLOAT) = 0.0 
       THEN ''Exponential''
       ELSE ''Tangent'' END)
    WHEN Fcst_formula = ''EXP'' THEN ''Exponential''  
    WHEN Fcst_formula IN (''LOG'',''LN'') THEN Fcst_formula||''--''||Fcst_param  
    WHEN Fcst_formula = ''FLAT'' THEN ''Flat''  
    ELSE Fcst_formula END) AS Decline_method,  
  (CASE WHEN Decline_method IN ( ''Hyperbolic'' , ''Tangent'')
     THEN CAST(SUBSTR(Fcst_formula,3,10) AS FLOAT)  
    ELSE NULL END) AS Decline_b,  
  (CASE Decline_method  

    WHEN ''Hyperbolic'' THEN  
     (CASE   
        WHEN Fcst_param_dec IS NOT NULL  
         THEN (POWER(1.0000000000/(1.0000000000 - Fcst_param_dec/100.0000000000),Decline_b) - 1.0000000000) / (12.0000000000 * Decline_b)  
        ELSE NULL END)  
    WHEN ''Tangent'' THEN  
     (CASE   
        WHEN Fcst_param_dec IS NOT NULL AND Fcst_param_dec<100.0000000000
         THEN -LN(1.0000000000 - Fcst_param_dec/100.0000000000) / (12.0000000000 * Decline_b)  
        ELSE NULL END)  
    WHEN ''Exponential'' THEN  
     (CASE   
        WHEN Fcst_param_dec IS NOT NULL AND Fcst_param_dec<100.0000000000
         THEN LN(1.0000000000 - Fcst_param_dec/100.0000000000) / -12.0000000000  
        ELSE NULL END)  

    WHEN ''SPD'' THEN  
     (CASE   
        WHEN Fcst_param_dec IS NOT NULL  
         THEN Fcst_param_dec/1200.0000000000
        ELSE NULL END)  

    ELSE NULL END) AS Decline_Di_1,  
  (CASE Decline_method  
    WHEN ''Hyperbolic'' THEN  
     (CASE   
        WHEN final_rate_dec IS NOT NULL  
        AND product_rate_dec IS NOT NULL  
        AND Fcst_cutoff_value_dec IS NOT NULL  
        AND Fcst_cutoff_unit IN (''MOS'', ''MO'', ''IMO'')  
         THEN (POWER(product_rate_dec / final_rate_dec, Decline_b) -1.0000000000) / (Decline_b * Fcst_cutoff_value_dec )  
        WHEN final_rate_dec IS NOT NULL  
        AND product_rate_dec IS NOT NULL  
        AND Fcst_cutoff_value_dec IS NOT NULL  
        AND Fcst_cutoff_unit IN (''YRS'', ''IYR'')  
         THEN (POWER(product_rate_dec / final_rate_dec, Decline_b) -1.0000000000) / (Decline_b * Fcst_cutoff_value_dec * 12.0000000000)  
        ELSE NULL END)  
    WHEN ''Exponential'' THEN  
     (CASE   
        WHEN final_rate_dec IS NOT NULL  
        AND product_rate_dec IS NOT NULL  
        AND Fcst_cutoff_value_dec IS NOT NULL  
        AND Fcst_cutoff_unit IN (''MOS'', ''MO'', ''IMO'')  
        AND final_rate_dec > 0.0
         THEN LN( product_rate_dec / final_rate_dec ) / Fcst_cutoff_value_dec  
        WHEN final_rate_dec IS NOT NULL  
        AND product_rate_dec IS NOT NULL  
        AND Fcst_cutoff_value_dec IS NOT NULL  
        AND Fcst_cutoff_unit IN (''YRS'', ''IYR'')  
        AND final_rate_dec > 0.0
         THEN LN( product_rate_dec / final_rate_dec ) / (Fcst_cutoff_value_dec * 12.0000000000)  
        ELSE NULL END)  
    ELSE NULL END) AS Decline_Di_2,  
  
  (CASE   
    WHEN Fcst_cutoff_unit = ''EXP'' AND Fcst_cutoff_value_dec IS NOT NULL  
    AND Fcst_cutoff_value_dec BETWEEN 0.000000000 AND 100.0000000000  
     THEN LN(1.0000000000 - Fcst_cutoff_value_dec/100.0000000000) / -12.0000000000  
     ELSE NULL  
   END) AS cutoff_Di  
FROM  
(  
SELECT  
  o.PROPNUM, o.major, o.SECTION, o.SEQUENCE, o.QUALIFIER, o.ALT_KEYWORD AS KEYWORD,  
  o.KEYWORD_seq, o.product_rate, o.final_rate, o.rate_unit,  
  o.Fcst_cutoff_value, o.Fcst_cutoff_unit, o.Fcst_formula, o.Fcst_param,  
  o.product_rate_dec, o.final_rate_dec, 
  (CASE WHEN Fcst_cutoff_unit = ''EXP'' AND o.Fcst_cutoff_value_dec>99.999999
    THEN 99.999999
    ELSE o.Fcst_cutoff_value_dec END) AS Fcst_cutoff_value_dec, 
  (CASE 
    WHEN SUBSTR(Fcst_formula,1,1) = ''B'' AND o.Fcst_param_dec<-200.0000000000
     THEN -200.0000000000
    WHEN (Fcst_formula = ''EXP'' OR SUBSTR(Fcst_formula,1,1) = ''B'') AND o.Fcst_param_dec>99.999999
     THEN 99.999999
    ELSE o.Fcst_param_dec END) AS Fcst_param_dec,  
  s.Start_SEQUENCE, s.Start_expression, s.start_year, s.start_month,  
  RANK() OVER  
    (PARTITION BY o.PROPNUM, o.QUALIFIER, o.SEQUENCE  
     ORDER BY Start_SEQUENCE DESC) AS rnk  
FROM  
(  
SELECT  
  v.PROPNUM, p.major, v.SECTION, v.SEQUENCE, v.QUALIFIER, v.KEYWORD, v.ALT_KEYWORD,  
  v.KEYWORD_seq, v.product_rate, v.final_rate, v.rate_unit,  
  v.Fcst_cutoff_value, v.Fcst_cutoff_unit, v.Fcst_formula, v.Fcst_param,  
  (CASE WHEN SUBSTR(product_rate,1,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''-'',''.'')  
     THEN CAST(SUBSTR(product_rate, 1, (CASE WHEN INSTR(product_rate,''.'',1,2)>0.0 THEN INSTR(product_rate,''.'',1,2)-1 ELSE length(product_rate) END)) AS FLOAT)
     ELSE NULL END) AS product_rate_dec,  
  (CASE WHEN SUBSTR(final_rate,1,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''-'',''.'')  
     THEN CAST(SUBSTR(final_rate, 1, (CASE WHEN INSTR(final_rate,''.'',1,2)>0.0 THEN INSTR(final_rate,''.'',1,2)-1 ELSE length(final_rate) END)) AS FLOAT)
     ELSE NULL END) AS final_rate_dec,  
  (CASE WHEN SUBSTR(Fcst_cutoff_value,1,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''-'',''.'')  
     THEN CAST(SUBSTR(Fcst_cutoff_value, 1, (CASE WHEN INSTR(Fcst_cutoff_value,''.'',1,2)>0.0 THEN INSTR(Fcst_cutoff_value,''.'',1,2)-1 ELSE length(Fcst_cutoff_value) END)) AS FLOAT)
     ELSE NULL END) AS Fcst_cutoff_value_dec,  
  (CASE WHEN SUBSTR(Fcst_param,1,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''-'',''.'')  
     THEN CAST(SUBSTR(Fcst_param, 1, (CASE WHEN INSTR(Fcst_param,''.'',1,2)>0.0 THEN INSTR(Fcst_param,''.'',1,2)-1 ELSE length(Fcst_param) END)) AS FLOAT)
     ELSE NULL END) AS Fcst_param_dec  
FROM ac_economic_vt v, trng_oil_industry.AC_PROPERTY p  
WHERE v.propnum = p.propnum  
AND   ALT_KEYWORD<>''START''
AND   exp7_start> 0.0
AND   ((Fcst_cutoff_unit IN (''MOS'', ''MO'', ''IMO'',''YRS'', ''IYR'') AND (Fcst_cutoff_value_dec > 0.0 OR Fcst_cutoff_value_dec IS NULL) ) 
       OR Fcst_cutoff_unit NOT IN (''MOS'', ''MO'', ''IMO'',''YRS'', ''IYR'') )
) o,  
(  
SELECT  
  ec.PROPNUM, ec.SEQUENCE AS Start_SEQUENCE,   
  ec.product_rate AS Start_expression,  
  (CASE   
    WHEN POSITION(''/'' IN product_rate) > 0  
     THEN CAST(TRIM(SUBSTR(product_rate,  POSITION(''/'' IN product_rate)+1, 30)) AS INTEGER)   
    WHEN product_rate = ''@M.PSD''   
     THEN extract(YEAR FROM PSD)  
   ELSE NULL END) AS start_year,  
  (CASE   
    WHEN POSITION(''/'' IN product_rate) > 0  
     THEN CAST(SUBSTR(product_rate, 1, POSITION(''/'' IN product_rate) -1) AS INTEGER)   
    WHEN product_rate = ''@M.PSD''   
     THEN extract(MONTH FROM PSD)  
   ELSE NULL END) AS start_month  
FROM ac_economic_vt ec  
LEFT JOIN trng_oil_industry.AC_PROPERTY pr  
ON (ec.propnum = pr.propnum)  
WHERE ALT_KEYWORD=''START''  
) s  
WHERE o.PROPNUM =  s.PROPNUM  
AND  o.SEQUENCE> s.Start_SEQUENCE  
) t  
WHERE rnk=1 
  ;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Prepare AC_ECONOMIC_DC3';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  ------------------------
  -- Collect Statistics --
  ------------------------
  SET check_point_id = check_point_id + 1;

  SET SqlStmt = 'COLLECT STAT ON trng_oil_industry.AC_ECONOMIC_DC3 INDEX (PROPNUM);';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Collect Statistics';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 

END;  

  ----------------
  -- End of SP  --
  ----------------

END;

REPLACE PROCEDURE trng_oil_industry.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                               
 AC_drop_vt_sp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                    
 
(
    IN   tbl_name         VARCHAR(100)
)
BEGIN

  --------------------------
  -- Define all variables --
  --------------------------
  DECLARE sp_name          VARCHAR(100) DEFAULT 'AC_drop_vt_sp';
  DECLARE check_point_id   INTEGER      DEFAULT 1;
  DECLARE RC               INTEGER;

  DECLARE SqlStmt          VARCHAR(10000);

  ---------------------------------
  -- SQL EXCEPTION HANDLER BLOCK --
  ---------------------------------

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    IF SQLCODE = 3807 THEN 
      SET RC = 0;
    ELSE
      RESIGNAL;
    END IF;
  END;

  -----------------
  -- Start OF SP --
  -----------------
  SET SqlStmt = 'DROP TABLE '||TRIM(tbl_name)||';';

  CALL DBC.SysExecSQL(SqlStmt);

  ---------------
  -- END OF SP --
  ---------------
  SET RC = 0;

END;

REPLACE PROCEDURE trng_oil_industry.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                     
 AC_integrate_sp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                          
 
( 
  OUT OUT_Return_CD         INTEGER
)
BEGIN
  DECLARE SqlStmt                 VARCHAR(20000);
  DECLARE Cond_SqlStmt            VARCHAR(20000);
  DECLARE proc_name               VARCHAR(50);

  DECLARE error_msg_txt           VARCHAR(100);
  DECLARE log_msg_txt             VARCHAR(100);
  DECLARE sp_sql_code             INTEGER;
  DECLARE sp_sql_state            VARCHAR(10);
  DECLARE sp_ins_activity_count   BIGINT;
  DECLARE sp_upd_activity_count   BIGINT;
  DECLARE check_point_id          INTEGER DEFAULT 0;
  DECLARE rc                      INTEGER;
  DECLARE cur_id                  INTEGER;
  DECLARE i                       INTEGER;

  DECLARE anomprojcursor CURSOR FOR
    SELECT Anomaly_Id
    FROM trng_oil_industry.ac_anomaly_lookup
    WHERE ML_model_ind= 'Y'
    ORDER BY Anomaly_Id;


  ---------------------------------
  -- SQL EXCEPTION HANDLER BLOCK --
  ---------------------------------
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
      SET sp_sql_code = SQLCODE ;
      SET sp_sql_state = SQLSTATE ;
      SET OUT_Return_CD = SQLCODE ;
      SET proc_name = 'AC_integrate_sp';

      INSERT INTO trng_oil_industry.Proc_Error_Tbl
      (CURRENT_TIMESTAMP, proc_name, sp_sql_state, sp_sql_code, 
       sp_ins_activity_count, error_msg_txt, SqlStmt);

    END;

  --------------
  -- START SP --
  --------------
LABEL_AC_INTEGRATE:
BEGIN 


  SET proc_name = 'AC_integrate_sp';

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,0, 0,
   0, 'Starting Stored Procedure', NULL); 

  SET proc_name = 'AC_integrate_sp';
  SET sp_ins_activity_count = 0 ;
  SET sp_upd_activity_count = 0 ;
  SET OUT_Return_CD = 0 ;
  SET sp_sql_code = 0 ;
  SET check_point_id  = 0;


  -----------------------------------------------
  -- CLEAR OUTPUT TABLE --
  -----------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = 'DELETE FROM trng_oil_industry.ML_anomaly;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Clear out table: ML_anomaly';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  ---------------------------------------
  -- Fetch the Anomaly ID to integrate --
  ---------------------------------------

  SET i = 0;
  OPEN anomprojcursor;
    WHILE (SQLCODE=0)
    DO
      SET i = i + 1;
      FETCH anomprojcursor INTO cur_id;
      IF (i = 1) THEN

SET Cond_SqlStmt = '
SELECT 
  f.PROPNUM, f.qualifier AS SCENARIO,
  l.Anomaly_Comment
FROM trng_oil_industry.AC_XG_fcst_'||TRIM(cur_id)||' f,
     trng_oil_industry.ac_anomaly_lookup l
WHERE f.prediction = ''Y''
AND   l.Anomaly_Id = '||TRIM(cur_id)||'
';
      ELSE
SET Cond_SqlStmt = Cond_SqlStmt ||' UNION ALL
SELECT 
  f.PROPNUM, f.qualifier AS SCENARIO,
  l.Anomaly_Comment
FROM trng_oil_industry.AC_XG_fcst_'||TRIM(cur_id)||' f,
     trng_oil_industry.ac_anomaly_lookup l
WHERE f.prediction = ''Y''
AND   l.Anomaly_Id = '||TRIM(cur_id)||'
';
      END IF;       

    END WHILE;
  CLOSE anomprojcursor;


  ----------------------------
  -- Insert into ML_Anomaly --
  ----------------------------
  SET check_point_id = check_point_id + 1;

  SET SqlStmt = '
INSERT INTO trng_oil_industry.ML_anomaly
SELECT
  a.PROPNUM,
  p.ASSET_GROUP,
  a.SCENARIO,
  p.MAJOR,
  a.Anomaly_Comment
FROM
(
'||Cond_SqlStmt||'
) a, trng_oil_industry.AC_PROPERTY p
WHERE a.PROPNUM =  p.PROPNUM 
;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Insert into ML_Anomaly';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 



END;  

  ----------------
  -- End of SP  --
  ----------------

END;

REPLACE PROCEDURE trng_oil_industry.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                        
 AC_Model_Create_sp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                             
 
( 
  IN  IN_train_pct          FLOAT,
  OUT OUT_Return_CD         INTEGER
)

BEGIN
  DECLARE SqlStmt                 VARCHAR(10000);
  DECLARE Cond_SqlStmt            VARCHAR(500);
  DECLARE proc_name               VARCHAR(50);

  DECLARE error_msg_txt           VARCHAR(100);
  DECLARE log_msg_txt             VARCHAR(100);
  DECLARE sp_sql_code             INTEGER;
  DECLARE sp_sql_state            VARCHAR(10);
  DECLARE sp_ins_activity_count   BIGINT;
  DECLARE sp_upd_activity_count   BIGINT;
  DECLARE check_point_id          INTEGER DEFAULT 0;
  DECLARE rc                      INTEGER;
  DECLARE train_pct               FLOAT;


  ---------------------------------
  -- SQL EXCEPTION HANDLER BLOCK --
  ---------------------------------
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
      SET sp_sql_code = SQLCODE ;
      SET sp_sql_state = SQLSTATE ;
      SET OUT_Return_CD = SQLCODE ;
      SET proc_name = 'AC_Model_Create_sp';

      INSERT INTO trng_oil_industry.Proc_Error_Tbl
      (CURRENT_TIMESTAMP, proc_name, sp_sql_state, sp_sql_code, 
       sp_ins_activity_count, error_msg_txt, SqlStmt);

    END;

  --------------
  -- START SP --
  --------------
LABEL_AC_MODEL_CREATE:
BEGIN 

  SET proc_name = 'AC_Model_Create_sp';
  SET sp_ins_activity_count = 0 ;
  SET sp_upd_activity_count = 0 ;
  SET OUT_Return_CD = 0 ;
  SET sp_sql_code = 0 ;
  SET check_point_id  = 0;

  IF (IN_train_pct IS NOT NULL AND 
      IN_train_pct >0.0 AND IN_train_pct<100.0) THEN
    SET train_pct = IN_train_pct;
  ELSE
    SET train_pct = 0.8;
  END IF;


  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,0, 0,
   0, 'Starting Stored Procedure', NULL); 



  -------------------------------
  -- Call Data Preparation SP  --
  -------------------------------
  
  CALL trng_oil_industry.AC_data_preparation_sp(:rc);

  IF (rc < 0) THEN
    SET OUT_Return_CD = rc;
    LEAVE LABEL_AC_MODEL_CREATE;
  END IF;


  -------------------------------
  -- Call Feature Creation SP  --
  -------------------------------
  
  CALL trng_oil_industry.AC_create_features_sp(:rc);

  IF (rc < 0) THEN
    SET OUT_Return_CD = rc;
    LEAVE LABEL_AC_MODEL_CREATE;
  END IF;


  -------------------------------
  -- Call Train/Test Split SP  --
  -------------------------------
  
  CALL trng_oil_industry.AC_traintest_split_sp(:train_pct, :rc);

  IF (rc < 0) THEN
    SET OUT_Return_CD = rc;
    LEAVE LABEL_AC_MODEL_CREATE;
  END IF;


  --------------------------------
  -- Call XG Boost Modeling SP  --
  --------------------------------
  
  CALL trng_oil_industry.AC_XG_model_sp(:rc);

  IF (rc < 0) THEN
    SET OUT_Return_CD = rc;
    LEAVE LABEL_AC_MODEL_CREATE;
  END IF;


  ----------------------------------
  -- Call XG Boost Prediction SP  --
  ----------------------------------
  
  CALL trng_oil_industry.AC_XG_fcst_sp(:rc);

  IF (rc < 0) THEN
    SET OUT_Return_CD = rc;
    LEAVE LABEL_AC_MODEL_CREATE;
  END IF;


  ----------------------------------
  -- Call Integration SP  --
  ----------------------------------
  
  CALL trng_oil_industry.AC_integrate_sp(:rc);

  IF (rc < 0) THEN
    SET OUT_Return_CD = rc;
    LEAVE LABEL_AC_MODEL_CREATE;
  END IF;





END;  

  ----------------
  -- End of SP  --
  ----------------

END;

REPLACE PROCEDURE trng_oil_industry.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
 AC_traintest_split_sp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
 
( 
  IN  IN_train_pct          FLOAT,
  OUT OUT_Return_CD         INTEGER
)
BEGIN
  DECLARE SqlStmt                 VARCHAR(20000);
  DECLARE Cond_SqlStmt            VARCHAR(1000);
  DECLARE proc_name               VARCHAR(50);

  DECLARE error_msg_txt           VARCHAR(100);
  DECLARE log_msg_txt             VARCHAR(100);
  DECLARE sp_sql_code             INTEGER;
  DECLARE sp_sql_state            VARCHAR(10);
  DECLARE sp_ins_activity_count   BIGINT;
  DECLARE sp_upd_activity_count   BIGINT;
  DECLARE check_point_id          INTEGER DEFAULT 0;
  DECLARE rc                      INTEGER;
  DECLARE max_id                  INTEGER;
  DECLARE cur_id                  INTEGER;
  DECLARE train_pct               FLOAT;

  ---------------------------------
  -- SQL EXCEPTION HANDLER BLOCK --
  ---------------------------------
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
      SET sp_sql_code = SQLCODE ;
      SET sp_sql_state = SQLSTATE ;
      SET OUT_Return_CD = SQLCODE ;
      SET proc_name = 'AC_traintest_split_sp';

      INSERT INTO trng_oil_industry.Proc_Error_Tbl
      (CURRENT_TIMESTAMP, proc_name, sp_sql_state, sp_sql_code, 
       sp_ins_activity_count, error_msg_txt, SqlStmt);

    END;

  --------------
  -- START SP --
  --------------
LABEL_AC_TRAINTEST_SPLIT:
BEGIN 

  SET proc_name = 'AC_traintest_split_sp';

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,0, 0,
   0, 'Starting Stored Procedure', NULL); 

  SET proc_name = 'AC_traintest_split_sp';
  SET sp_ins_activity_count = 0 ;
  SET sp_upd_activity_count = 0 ;
  SET OUT_Return_CD = 0 ;
  SET sp_sql_code = 0 ;
  SET check_point_id  = 0;

  IF (IN_train_pct IS NOT NULL AND 
      IN_train_pct >0.0 AND IN_train_pct<100.0) THEN
    SET train_pct = IN_train_pct;
  ELSE
    SET train_pct = 0.8;
  END IF;

  --------------------------------------
  -- Remove Existing volation tables  --
  --------------------------------------
--  CALL trng_oil_industry.AC_drop_vt_sp('AC_ECONOMIC_detail_vt');
--  CALL trng_oil_industry.AC_drop_vt_sp('trng_oil_industry.AC_ECONOMIC_detail');


  -----------------------------------------------
  -- CLEAR OUTPUT TABLE --
  -----------------------------------------------
  SET check_point_id = check_point_id + 1;
  SET SqlStmt = 'DELETE FROM trng_oil_industry.AC_PROPNUM_trainset;';

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Clear out table: AC_PROPNUM_trainset';
  SET error_msg_txt = 'Error: ' || log_msg_txt;

  EXECUTE IMMEDIATE SqlStmt;

  SET sp_sql_code = SQLCODE ;
  SET sp_sql_state = SQLSTATE ;
  SET OUT_Return_CD = SQLCODE ;

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  -----------------------------------------
  -- Get maximun sequence for each phase --
  -----------------------------------------
  SET check_point_id = check_point_id + 1;

  SELECT 
    MAX(anomaly_id) AS max_id
    INTO :max_id
  FROM trng_oil_industry.AC_Anomaly_lookup
  ;
 

  SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': MAX Keyword Sequence = '||TRIM(max_id);
  SET error_msg_txt = 'Error: ' || log_msg_txt;


  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
   :ACTIVITY_COUNT, log_msg_txt, NULL); 


  -----------------------------------------
  -- Processs for each sequence in order --
  -----------------------------------------

  SET cur_id = 1;
  WHILE (cur_id <= max_id)
  DO

    SET check_point_id = check_point_id + 1;
    SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Processing Anomaly seq ID = '||TRIM(cur_id);


  -- Split the data using stratifed Train/Test Split --
    SET SqlStmt = '
INSERT INTO trng_oil_industry.AC_PROPNUM_trainset
SELECT
  PROPNUM, QUALIFIER, MAJOR,
  Anomaly_Id, Anomaly_Ind,
  (CASE 
    WHEN CAST(rnd_rnk AS FLOAT)/CAST(strata_pop AS FLOAT) <= '||TRIM(train_pct)||'
     THEN 1 
     ELSE 0 END) AS train_ind
FROM
(SELECT
  PROPNUM, QUALIFIER, MAJOR,
  Anomaly_Id, Anomaly_Ind,
  RANK() OVER (PARTITION BY Anomaly_Ind
               ORDER BY rand_nbr) AS rnd_rnk,
  COUNT(0) OVER (PARTITION BY Anomaly_Ind) AS strata_pop
FROM
(
SELECT
  pr.PROPNUM, pr.QUALIFIER, pr.MAJOR,
  '||TRIM(cur_id)||' AS Anomaly_Id,
  (CASE WHEN ab.PROPNUM IS NOT NULL THEN 1 ELSE 0 END) AS Anomaly_Ind,
  RANDOM(0,999999999) as rand_nbr
FROM
(SELECT
  e.PROPNUM, e.QUALIFIER, p.MAJOR
FROM trng_oil_industry.ac_economic_DC3 e, trng_oil_industry.AC_PROPERTY p  
WHERE e.propnum = p.propnum
GROUP BY 1,2,3) pr
LEFT JOIN
(SELECT
  a.PROPNUM, l.Anomaly_Id
FROM trng_oil_industry.AC_Anomaly a, trng_oil_industry.AC_Anomaly_lookup l
WHERE a.Anomaly_Comment = l.Anomaly_Comment
AND   l.Anomaly_Id = '||TRIM(cur_id)||') ab
ON (pr.PROPNUM = ab.PROPNUM)
) t )u
;';


    EXECUTE IMMEDIATE SqlStmt;

    SET sp_sql_code = SQLCODE ;
    SET sp_sql_state = SQLSTATE ;
    SET OUT_Return_CD = SQLCODE ;

    INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
    (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
     :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  -- Create the view for training data --
    SET SqlStmt = '
REPLACE VIEW trng_oil_industry.AC_features_train_'||TRIM(cur_id)||'_vw AS
SELECT	
  f.PROPNUM, f.QUALIFIER, f.MARJOR, 
  (CASE WHEN t.Anomaly_Ind = 0 THEN ''N'' ELSE ''Y'' END) AS Anomaly_Ind,
  keyword_order, total_formula_cnt,
  oil_formula_cnt, gas_formula_cnt, wtr_formula_cnt, 
  oilratio_formula_cnt, gasratio_formula_cnt, wtrratio_formula_cnt, 
  COALESCE(start_oil_rate,0.0000000000) AS start_oil_rate,
  COALESCE(end_oil_rate,0.0000000000) AS end_oil_rate,
  COALESCE(peak_oil_rate, 0.0000000000) AS peak_oil_rate,
  COALESCE(start_oil_time, 0.0000000000) AS start_oil_time,
  COALESCE(end_oil_time, 0.0000000000) AS end_oil_time,
  COALESCE(start_gas_rate,0.0000000000) AS start_gas_rate,
  COALESCE(end_gas_rate,0.0000000000) AS end_gas_rate,
  COALESCE(peak_gas_rate, 0.0000000000) AS peak_gas_rate,
  COALESCE(start_gas_time, 0.0000000000) AS start_gas_time,
  COALESCE(end_gas_time, 0.0000000000) AS end_gas_time,
  COALESCE(start_wtr_rate,0.0000000000) AS start_wtr_rate,
  COALESCE(end_wtr_rate,0.0000000000) AS end_wtr_rate,
  COALESCE(peak_wtr_rate, 0.0000000000) AS peak_wtr_rate,
  COALESCE(start_wtr_time, 0.0000000000) AS start_wtr_time,
  COALESCE(end_wtr_time, 0.0000000000) AS end_wtr_time,
  COALESCE(start_gor_rate,0.0000000000) AS start_gor_rate,
  COALESCE(end_gor_rate,0.0000000000) AS end_gor_rate,
  COALESCE(end_gor_rate1,0.0000000000) AS end_gor_rate1,
  COALESCE(peak_gor_rate, 0.0000000000) AS peak_gor_rate,
  (CASE WHEN end_gor_rate1>0.00000000 THEN end_gor_rate / end_gor_rate1 ELSE 1.0000000000 END) AS gor_slope,
  ABS( COALESCE(f.end_oil_time, 0.0000000000) - COALESCE(end_gas_time, 0.0000000000) ) +
  ABS( COALESCE(f.end_oil_time, 0.0000000000) - COALESCE(end_wtr_time, 0.0000000000) ) AS all_delta_time,
  COALESCE(peak_oil_time, 1.000) AS peak_oil_time,
  COALESCE(peak_gas_time, 1.000) AS peak_gas_time,
  COALESCE(peak_wtr_time, 1.000) AS peak_wtr_time,
  COALESCE(peak_major_time, 1.000) AS peak_major_time,
  COALESCE(sw_oil_unit, 0.0000000000) AS sw_oil_unit,
  COALESCE(sw_gas_unit, 0.0000000000) AS sw_gas_unit,
  COALESCE(sw_wtr_unit, 0.0000000000) AS sw_wtr_unit,
  (CASE WHEN oil_fcst_order LIKE ''%D, U%'' THEN 1 ELSE 0 END) as bad_oil_dir_ind,
  (CASE WHEN gas_fcst_order LIKE ''%D, U%'' THEN 1 ELSE 0 END) as bad_gas_dir_ind,
  (CASE WHEN wtr_fcst_order LIKE ''%D, U%'' THEN 1 ELSE 0 END) as bad_wtr_dir_ind,
  (CASE WHEN f.MARJOR = ''OIL'' 
    THEN (CASE WHEN COALESCE(end_oil_time, 0.0000000000) = 0.0 THEN 600.0 ELSE COALESCE(end_oil_time, 0.0000000000) END)
    ELSE (CASE WHEN COALESCE(end_gas_time, 0.0000000000) = 0.0 THEN 600.0 ELSE COALESCE(end_gas_time, 0.0000000000) END)
    END) AS end_major_time
FROM trng_oil_industry.AC_PROPNUM_trainset t, trng_oil_industry.AC_features f
WHERE t.Anomaly_Id = '||TRIM(cur_id)||' 
AND   t.PROPNUM = f.PROPNUM
AND   t.QUALIFIER = f.QUALIFIER
AND   t.train_ind = 1
;';

    EXECUTE IMMEDIATE SqlStmt;

    SET sp_sql_code = SQLCODE ;
    SET sp_sql_state = SQLSTATE ;
    SET OUT_Return_CD = SQLCODE ;

    INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
    (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
     :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


  -- Create the view for training data --
    SET SqlStmt = '
REPLACE VIEW trng_oil_industry.AC_features_test_'||TRIM(cur_id)||'_vw AS
SELECT	
  f.PROPNUM, f.QUALIFIER, f.MARJOR, 
  (CASE WHEN t.Anomaly_Ind = 0 THEN ''N'' ELSE ''Y'' END) AS Anomaly_Ind,
  keyword_order, total_formula_cnt,
  oil_formula_cnt, gas_formula_cnt, wtr_formula_cnt, 
  oilratio_formula_cnt, gasratio_formula_cnt, wtrratio_formula_cnt, 
  COALESCE(start_oil_rate,0.0000000000) AS start_oil_rate,
  COALESCE(end_oil_rate,0.0000000000) AS end_oil_rate,
  COALESCE(peak_oil_rate, 0.0000000000) AS peak_oil_rate,
  COALESCE(start_oil_time, 0.0000000000) AS start_oil_time,
  COALESCE(end_oil_time, 0.0000000000) AS end_oil_time,
  COALESCE(start_gas_rate,0.0000000000) AS start_gas_rate,
  COALESCE(end_gas_rate,0.0000000000) AS end_gas_rate,
  COALESCE(peak_gas_rate, 0.0000000000) AS peak_gas_rate,
  COALESCE(start_gas_time, 0.0000000000) AS start_gas_time,
  COALESCE(end_gas_time, 0.0000000000) AS end_gas_time,
  COALESCE(start_wtr_rate,0.0000000000) AS start_wtr_rate,
  COALESCE(end_wtr_rate,0.0000000000) AS end_wtr_rate,
  COALESCE(peak_wtr_rate, 0.0000000000) AS peak_wtr_rate,
  COALESCE(start_wtr_time, 0.0000000000) AS start_wtr_time,
  COALESCE(end_wtr_time, 0.0000000000) AS end_wtr_time,
  COALESCE(start_gor_rate,0.0000000000) AS start_gor_rate,
  COALESCE(end_gor_rate,0.0000000000) AS end_gor_rate,
  COALESCE(end_gor_rate1,0.0000000000) AS end_gor_rate1,
  COALESCE(peak_gor_rate, 0.0000000000) AS peak_gor_rate,
  (CASE WHEN end_gor_rate1>0.00000000 THEN end_gor_rate / end_gor_rate1 ELSE 1.0000000000 END) AS gor_slope,
  ABS( COALESCE(f.end_oil_time, 0.0000000000) - COALESCE(end_gas_time, 0.0000000000) ) +
  ABS( COALESCE(f.end_oil_time, 0.0000000000) - COALESCE(end_wtr_time, 0.0000000000) ) AS all_delta_time,
  COALESCE(peak_oil_time, 1.000) AS peak_oil_time,
  COALESCE(peak_gas_time, 1.000) AS peak_gas_time,
  COALESCE(peak_wtr_time, 1.000) AS peak_wtr_time,
  COALESCE(peak_major_time, 1.000) AS peak_major_time,
  COALESCE(sw_oil_unit, 0.0000000000) AS sw_oil_unit,
  COALESCE(sw_gas_unit, 0.0000000000) AS sw_gas_unit,
  COALESCE(sw_wtr_unit, 0.0000000000) AS sw_wtr_unit,
  (CASE WHEN oil_fcst_order LIKE ''%D, U%'' THEN 1 ELSE 0 END) as bad_oil_dir_ind,
  (CASE WHEN gas_fcst_order LIKE ''%D, U%'' THEN 1 ELSE 0 END) as bad_gas_dir_ind,
  (CASE WHEN wtr_fcst_order LIKE ''%D, U%'' THEN 1 ELSE 0 END) as bad_wtr_dir_ind,
  (CASE WHEN f.MARJOR = ''OIL'' 
    THEN (CASE WHEN COALESCE(end_oil_time, 0.0000000000) = 0.0 THEN 600.0 ELSE COALESCE(end_oil_time, 0.0000000000) END)
    ELSE (CASE WHEN COALESCE(end_gas_time, 0.0000000000) = 0.0 THEN 600.0 ELSE COALESCE(end_gas_time, 0.0000000000) END)
    END) AS end_major_time
FROM trng_oil_industry.AC_PROPNUM_trainset t, trng_oil_industry.AC_features f
WHERE t.Anomaly_Id = '||TRIM(cur_id)||' 
AND   t.PROPNUM = f.PROPNUM
AND   t.QUALIFIER = f.QUALIFIER
AND   t.train_ind = 0
;';

    EXECUTE IMMEDIATE SqlStmt;

    SET sp_sql_code = SQLCODE ;
    SET sp_sql_state = SQLSTATE ;
    SET OUT_Return_CD = SQLCODE ;

    INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
    (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
     :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 


    
    SET cur_id = cur_id + 1;
  END WHILE;


END;  

  ----------------
  -- End of SP  --
  ----------------

END;

REPLACE PROCEDURE trng_oil_industry.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                   
 AC_XG_fcst_sp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                        
 
( 
  OUT OUT_Return_CD         INTEGER
)
BEGIN
  DECLARE SqlStmt                 VARCHAR(20000);
  DECLARE Cond_SqlStmt            VARCHAR(20000);
  DECLARE proc_name               VARCHAR(50);

  DECLARE error_msg_txt           VARCHAR(100);
  DECLARE log_msg_txt             VARCHAR(100);
  DECLARE sp_sql_code             INTEGER;
  DECLARE sp_sql_state            VARCHAR(10);
  DECLARE sp_ins_activity_count   BIGINT;
  DECLARE sp_upd_activity_count   BIGINT;
  DECLARE check_point_id          INTEGER DEFAULT 0;
  DECLARE rc                      INTEGER;
  DECLARE cur_id                  INTEGER;
  DECLARE num_features            VARCHAR(1000);
  DECLARE cat_features            VARCHAR(1000);
  DECLARE mod_tbl                 VARCHAR(100);
  DECLARE fcst_tbl                VARCHAR(100);
  DECLARE i                       INTEGER;
  DECLARE cnt                     INTEGER;



  DECLARE anomprojcursor CURSOR FOR
    SELECT Anomaly_Id
    FROM trng_oil_industry.ac_anomaly_lookup
    WHERE ML_model_ind= 'Y'
    ORDER BY Anomaly_Id;


  ---------------------------------
  -- SQL EXCEPTION HANDLER BLOCK --
  ---------------------------------
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
      SET sp_sql_code = SQLCODE ;
      SET sp_sql_state = SQLSTATE ;
      SET OUT_Return_CD = SQLCODE ;
      SET proc_name = 'AC_XG_fcst_sp';

      INSERT INTO trng_oil_industry.Proc_Error_Tbl
      (CURRENT_TIMESTAMP, proc_name, sp_sql_state, sp_sql_code, 
       sp_ins_activity_count, error_msg_txt, SqlStmt);

    END;

  --------------
  -- START SP --
  --------------
LABEL_AC_XG_FCST:
BEGIN 

  SET proc_name = 'AC_XG_fcst_sp';

  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,0, 0,
   0, 'Starting Stored Procedure', NULL); 

  SET proc_name = 'AC_XG_fcst_sp';
  SET sp_ins_activity_count = 0 ;
  SET sp_upd_activity_count = 0 ;
  SET OUT_Return_CD = 0 ;
  SET sp_sql_code = 0 ;
  SET check_point_id  = 0;

  SET num_features = ' ''total_formula_cnt'',''oil_formula_cnt'',''gas_formula_cnt'',''wtr_formula_cnt'',''oilratio_formula_cnt'',''gasratio_formula_cnt'',''wtrratio_formula_cnt'',
  ''start_oil_rate'',''end_oil_rate'',''peak_oil_rate'',''start_oil_time'',''end_oil_time'', ''peak_oil_time'',
  ''start_gas_rate'',''end_gas_rate'',''peak_gas_rate'',''start_gas_time'',''end_gas_time'', ''peak_gas_time'',
  ''start_wtr_rate'',''end_wtr_rate'',''peak_wtr_rate'',''start_wtr_time'',''end_wtr_time'', ''peak_wtr_time'',
  ''start_gor_rate'',''end_gor_rate'',''peak_gor_rate'',''gor_slope'',
  ''all_delta_time'', ''peak_major_time'', ''end_major_time'',
  ''sw_oil_unit'',''sw_gas_unit'',''sw_wtr_unit'',
  ''bad_oil_dir_ind'', ''bad_gas_dir_ind'', ''bad_wtr_dir_ind'' ';

  SET cat_features = ' ''MARJOR'', ''keyword_order'' ';



  ---------------------------------------
  -- Count # of Anomaly to be process  --
  ---------------------------------------

    SELECT COUNT(0) INTO :cnt
    FROM trng_oil_industry.ac_anomaly_lookup
    WHERE ML_model_ind= 'Y'
    ;


  ---------------------------------------------
  -- Fetch the Anomaly ID to Create XG Model --
  ---------------------------------------------

  SET i = 0;
  OPEN anomprojcursor;
    WHILE (i<cnt)
    DO
      SET i = i + 1;
      FETCH anomprojcursor INTO cur_id;

      SET mod_tbl = 'trng_oil_industry.AC_XG_model_'||TRIM(cur_id);

      SET fcst_tbl = 'trng_oil_industry.AC_XG_fcst_'||TRIM(cur_id);

      CALL trng_oil_industry.AC_drop_vt_sp(fcst_tbl);

      SET check_point_id = check_point_id + 1;

      SET SqlStmt = '
      CREATE MULTISET TABLE '||TRIM(fcst_tbl)||' AS (
      SELECT * FROM XGBoostPredict (
        ON trng_oil_industry.AC_features_test_'||TRIM(cur_id)||'_vw AS InputTable PARTITION BY ANY
        ON '||TRIM(mod_tbl)||' AS ModelTable DIMENSION ORDER BY tree_id, iter, class_num
        USING
          IDColumn (''PROPNUM'')
          NumBoostedTrees (1)
          Accumulate (''Anomaly_Ind'',''QUALIFIER'')
      ) AS dt
      ) WITH DATA
      PRIMARY INDEX (PROPNUM)
      ;';

      SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Create XG Boost forecast for Anomaly ID = ' ||TRIM(cur_id);
      SET error_msg_txt = 'Error: ' || log_msg_txt;

      EXECUTE IMMEDIATE SqlStmt;

      SET sp_sql_code = SQLCODE ;
      SET sp_sql_state = SQLSTATE ;
      SET OUT_Return_CD = SQLCODE ;

     INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
     (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
      :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 

    END WHILE;
  CLOSE anomprojcursor;



END;  

  ----------------
  -- End of SP  --
  ----------------

END;

REPLACE PROCEDURE trng_oil_industry.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                              
 AC_XG_model_sp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                   
 
( 
  OUT OUT_Return_CD         INTEGER
)
BEGIN
  DECLARE SqlStmt                 VARCHAR(20000);
  DECLARE Cond_SqlStmt            VARCHAR(20000);
  DECLARE proc_name               VARCHAR(50);

  DECLARE error_msg_txt           VARCHAR(100);
  DECLARE log_msg_txt             VARCHAR(100);
  DECLARE sp_sql_code             INTEGER;
  DECLARE sp_sql_state            VARCHAR(10);
  DECLARE sp_ins_activity_count   BIGINT;
  DECLARE sp_upd_activity_count   BIGINT;
  DECLARE check_point_id          INTEGER DEFAULT 0;
  DECLARE rc                      INTEGER;
  DECLARE cur_id                  INTEGER;
  DECLARE num_features            VARCHAR(1000);
  DECLARE cat_features            VARCHAR(1000);
  DECLARE mod_tbl                 VARCHAR(100);
  DECLARE i                       INTEGER;
  DECLARE cnt                     INTEGER;



  DECLARE anomprojcursor CURSOR FOR
    SELECT Anomaly_Id
    FROM trng_oil_industry.ac_anomaly_lookup
    WHERE ML_model_ind= 'Y'
    ORDER BY Anomaly_Id;


  ---------------------------------
  -- SQL EXCEPTION HANDLER BLOCK --
  ---------------------------------
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
      SET sp_sql_code = SQLCODE ;
      SET sp_sql_state = SQLSTATE ;
      SET OUT_Return_CD = SQLCODE ;
      SET proc_name = 'AC_XG_model_sp';

      INSERT INTO trng_oil_industry.Proc_Error_Tbl
      (CURRENT_TIMESTAMP, proc_name, sp_sql_state, sp_sql_code, 
       sp_ins_activity_count, error_msg_txt, SqlStmt);

    END;

  --------------
  -- START SP --
  --------------
LABEL_AC_XG_MODEL:
BEGIN 

  SET proc_name = 'AC_XG_model_sp';
  INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
  (CURRENT_TIMESTAMP,proc_name,0, 0,
   0, 'Starting Stored Procedure', NULL); 

  SET proc_name = 'AC_XG_model_sp';
  SET sp_ins_activity_count = 0 ;
  SET sp_upd_activity_count = 0 ;
  SET OUT_Return_CD = 0 ;
  SET sp_sql_code = 0 ;
  SET check_point_id  = 0;

  SET num_features = ' ''total_formula_cnt'',''oil_formula_cnt'',''gas_formula_cnt'',''wtr_formula_cnt'',''oilratio_formula_cnt'',''gasratio_formula_cnt'',''wtrratio_formula_cnt'',
  ''start_oil_rate'',''end_oil_rate'',''peak_oil_rate'',''start_oil_time'',''end_oil_time'', ''peak_oil_time'',
  ''start_gas_rate'',''end_gas_rate'',''peak_gas_rate'',''start_gas_time'',''end_gas_time'', ''peak_gas_time'',
  ''start_wtr_rate'',''end_wtr_rate'',''peak_wtr_rate'',''start_wtr_time'',''end_wtr_time'', ''peak_wtr_time'',
  ''start_gor_rate'',''end_gor_rate'',''peak_gor_rate'',''gor_slope'',
  ''all_delta_time'', ''peak_major_time'', ''end_major_time'',
  ''sw_oil_unit'',''sw_gas_unit'',''sw_wtr_unit'' ';

  SET cat_features = ' ''MARJOR'', ''keyword_order'', ''bad_oil_dir_ind'', ''bad_gas_dir_ind'', ''bad_wtr_dir_ind'' ';



  ---------------------------------------
  -- Count # of Anomaly to be process  --
  ---------------------------------------

    SELECT COUNT(0) INTO :cnt
    FROM trng_oil_industry.ac_anomaly_lookup
    WHERE ML_model_ind= 'Y'
    ;



  ---------------------------------------------
  -- Fetch the Anomaly ID to Create XG Model --
  ---------------------------------------------

  SET i = 0;
  OPEN anomprojcursor;
    WHILE (i<cnt)
    DO
      SET i = i + 1;
      FETCH anomprojcursor INTO cur_id;

      SET mod_tbl = 'trng_oil_industry.AC_XG_model_'||TRIM(cur_id);

      CALL trng_oil_industry.AC_drop_vt_sp(mod_tbl);
      CALL trng_oil_industry.AC_drop_vt_sp('trng_oil_industry.XG_LOG');

      SET check_point_id = check_point_id + 1;

      SET SqlStmt = '
      CREATE MULTISET TABLE trng_oil_industry.XG_LOG AS (
      SELECT * FROM XGBoost (
      ON trng_oil_industry.AC_features_train_'||TRIM(cur_id)||'_vw AS InputTable
      OUT TABLE OutputTable ('||TRIM(mod_tbl)||')
      USING
      ResponseColumn (''Anomaly_Ind'')
      PredictionType (''classification'') 
      NumericInputs ('||TRIM(num_features)||') 
      CategoricalInputs ('||TRIM(cat_features)||')
      LossFunction (''softmax'')
      IterNum (10)
      MaxDepth (20)
      MinNodeSize (1)
      RegularizationLambda (1)
      ShrinkageFactor (0.1)
      IDColumn (''PROPNUM'')
      ) AS dt
      ) WITH DATA;';

      SET log_msg_txt = 'Step #'||TRIM(check_point_id)|| ': Create XG Boost model for Anomaly ID = ' ||TRIM(cur_id);
      SET error_msg_txt = 'Error: ' || log_msg_txt;

      EXECUTE IMMEDIATE SqlStmt;

      SET sp_sql_code = SQLCODE ;
      SET sp_sql_state = SQLSTATE ;
      SET OUT_Return_CD = SQLCODE ;

     INSERT INTO trng_oil_industry.DDaaS_Log_Tbl
     (CURRENT_TIMESTAMP,proc_name,:SQLSTATE, :SQLCODE,
      :ACTIVITY_COUNT, log_msg_txt, SqlStmt); 

    END WHILE;
  CLOSE anomprojcursor;



END;  

  ----------------
  -- End of SP  --
  ----------------

END;

