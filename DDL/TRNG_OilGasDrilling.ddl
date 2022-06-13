create database TRNG_OilGasDrilling from demonow as perm=0;
create foreign table gs_tables_db."TRNG_OilGasDrilling_DDaaS_Survey_Logs_Stand_Test", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-OilGasDrilling/DDaaS-Survey-Logs-Stand-Test/'));
create foreign table gs_tables_db."TRNG_OilGasDrilling_Well_Bores_TPL", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-OilGasDrilling/Well-Bores-TPL/'));
create foreign table gs_tables_db."TRNG_OilGasDrilling_Rig_State_Drilling_Stat", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-OilGasDrilling/Rig-State-Drilling-Stat/'));
create foreign table gs_tables_db."TRNG_OilGasDrilling_Srfc_Sensor_Parms_PPI_Flat_Rig_States", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-OilGasDrilling/Srfc-Sensor-Parms-PPI-Flat-Rig-States/'));
create foreign table gs_tables_db."TRNG_OilGasDrilling_Wells", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-OilGasDrilling/Wells/'));
create foreign table gs_tables_db."TRNG_OilGasDrilling_Srfc_Sensor_Parms_PPI_Flat", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-OilGasDrilling/Srfc-Sensor-Parms-PPI-Flat/'));
create foreign table gs_tables_db."TRNG_OilGasDrilling_Well_Rigs", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-OilGasDrilling/Well-Rigs/'));
create foreign table gs_tables_db."TRNG_OilGasDrilling_Rig_State_Drilling_Stat_orig", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-OilGasDrilling/Rig-State-Drilling-Stat-orig/'));
create foreign table gs_tables_db."TRNG_OilGasDrilling_DDaaS_Survey_Logs", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-OilGasDrilling/DDaaS-Survey-Logs/'));
replace view TRNG_OilGasDrilling.DDaaS_Survey_Logs as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"Trajectory_uid"
,"Trajectory_Name"
,"MeasrdDepthMin_Nbr"
,"MeasrdDepthMin_Uom"
,"MeasrdDepthMax_Nbr"
,"MeasrdDepthMax_Uom"
,"PrjctnAzimuthVrtclSctn_Nbr"
,"PrjctnAzimuthVrtclSctn_Uom"
,"DispNrthSthVertSectOrig_Nbr"
,"DispNrthSthVertSectOrig_Uom"
,"DispEstWstVertSectOrig_Nbr"
,"DispEstWstVertSectOrig_Uom"
,"AzimuthRef_Val"
,"Trajectory_Station_uid"
,"Trajectory_Station_Ts"
,"Trajectory_Station_Type_Val"
,"Measured_Depth_Nbr"
,"Measured_Depth_Uom"
,"True_Vertical_Depth_Nbr"
,"True_Vertical_Depth_Uom"
,"Inclination_Nbr"
,"Inclination_Uom"
,"Azimuth_Nbr"
,"Azimuth_Uom"
,"DispNrthSth_Nbr"
,"DispNrthSth_Uom"
,"DispEstWst_Nbr"
,"DispEstWst_Uom"
,"Vertical_Section_Nbr"
,"Vertical_Section_Uom"
,"Dogleg_Severity_Nbr"
,"Dogleg_Severity_Uom"
,"Batch_Nbr"
,"LOAD_DT"
,"LOAD_TM"
from gs_tables_db.TRNG_OilGasDrilling_DDaaS_Survey_Logs;
replace view TRNG_OilGasDrilling.DDaaS_Survey_Logs_Stand_Test as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"Trajectory_uid"
,"Trajectory_Name"
,"MeasrdDepthMin_Nbr"
,"MeasrdDepthMin_Uom"
,"MeasrdDepthMax_Nbr"
,"MeasrdDepthMax_Uom"
,"PrjctnAzimuthVrtclSctn_Nbr"
,"PrjctnAzimuthVrtclSctn_Uom"
,"DispNrthSthVertSectOrig_Nbr"
,"DispNrthSthVertSectOrig_Uom"
,"DispEstWstVertSectOrig_Nbr"
,"DispEstWstVertSectOrig_Uom"
,"AzimuthRef_Val"
,"Trajectory_Station_uid"
,"Trajectory_Station_Ts"
,"Trajectory_Station_Type_Val"
,"Measured_Depth_Nbr"
,"Measured_Depth_Uom"
,"True_Vertical_Depth_Nbr"
,"True_Vertical_Depth_Uom"
,"Inclination_Nbr"
,"Inclination_Uom"
,"Azimuth_Nbr"
,"Azimuth_Uom"
,"DispNrthSth_Nbr"
,"DispNrthSth_Uom"
,"DispEstWst_Nbr"
,"DispEstWst_Uom"
,"Vertical_Section_Nbr"
,"Vertical_Section_Uom"
,"Dogleg_Severity_Nbr"
,"Dogleg_Severity_Uom"
,"Batch_Nbr"
,"LOAD_DT"
,"LOAD_TM"
,"Stand_ID"
,"Diff"
,"Rotary_pct"
,"Slide_pct"
,"Diff_Rank"
from gs_tables_db.TRNG_OilGasDrilling_DDaaS_Survey_Logs_Stand_Test;
replace view TRNG_OilGasDrilling.Rig_State_Drilling_Stat as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"Stand_Id"
,"MacroState"
,"StartSeqno"
,"EndSeqno"
,"startTime"
,"endTime"
,"standDuration_hrs"
,"standDuration"
,"Slip_Id"
,"slipDuration_hrs"
,"slipDuration"
,"startDepth"
,"endDepth"
,"StandLength"
,"Conn_BackReaming_sec"
,"Conn_InSlips_sec"
,"Conn_OffBottom_sec"
,"Conn_ToBottom_sec"
,"Conn_DrillToDrill_sec"
,"Conn_Survey_sec"
,"ROP_Net"
,"ROP_Gross"
,"Rotary_pct"
,"Slide_pct"
,"Rotary_Drill_WOB_05th"
,"Rotary_Drill_WOB_avg"
,"Rotary_Drill_WOB_95th"
,"Rotary_Drill_Tor_05th"
,"Rotary_Drill_Tor_avg"
,"Rotary_Drill_Tor_95th"
,"Rotary_Drill_SPP_05th"
,"Rotary_Drill_SPP_avg"
,"Rotary_Drill_SPP_95th"
,"Rotary_Drill_deltaP_05th"
,"Rotary_Drill_deltaP_avg"
,"Rotary_Drill_deltaP_95th"
,"Rotary_Drill_Qin_05th"
,"Rotary_Drill_Qin_avg"
,"Rotary_Drill_Qin_95th"
,"Slide_Drill_WOB_05th"
,"Slide_Drill_WOB_avg"
,"Slide_Drill_WOB_95th"
,"Slide_Drill_Tor_05th"
,"Slide_Drill_Tor_avg"
,"Slide_Drill_Tor_95th"
,"Slide_Drill_SPP_05th"
,"Slide_Drill_SPP_avg"
,"Slide_Drill_SPP_95th"
,"Slide_Drill_deltaP_05th"
,"Slide_Drill_deltaP_avg"
,"Slide_Drill_deltaP_95th"
,"Slide_Drill_Qin_05th"
,"Slide_Drill_Qin_avg"
,"Slide_Drill_Qin_95th"
,"SlipStartTime"
,"SlipEndTime"
,"Bit_State_AtBottom_Start"
,"Bit_State_AtBottom_End"
,"Bit_State_AtBottom_Start_Ts"
,"Bit_State_AtBottom_End_Ts"
,"slips_AtBottom_Ts"
,"adj_SlipStartTime"
,"Start_Pressure_Ts"
,"End_stand_HookLoad_Ts"
,"End_slip_HookLoad_Ts"
,"stand_note"
from gs_tables_db.TRNG_OilGasDrilling_Rig_State_Drilling_Stat;
replace view TRNG_OilGasDrilling.Rig_State_Drilling_Stat_orig as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"Stand_Id"
,"MacroState"
,"StartSeqno"
,"EndSeqno"
,"startTime"
,"endTime"
,"standDuration_hrs"
,"standDuration"
,"Slip_Id"
,"slipDuration_hrs"
,"slipDuration"
,"startDepth"
,"endDepth"
,"StandLength"
,"Conn_BackReaming_sec"
,"Conn_InSlips_sec"
,"Conn_OffBottom_sec"
,"Conn_ToBottom_sec"
,"Conn_DrillToDrill_sec"
,"Conn_Survey_sec"
,"ROP_Net"
,"ROP_Gross"
,"Rotary_pct"
,"Slide_pct"
,"Rotary_Drill_WOB_05th"
,"Rotary_Drill_WOB_avg"
,"Rotary_Drill_WOB_95th"
,"Rotary_Drill_Tor_05th"
,"Rotary_Drill_Tor_avg"
,"Rotary_Drill_Tor_95th"
,"Rotary_Drill_SPP_05th"
,"Rotary_Drill_SPP_avg"
,"Rotary_Drill_SPP_95th"
,"Rotary_Drill_deltaP_05th"
,"Rotary_Drill_deltaP_avg"
,"Rotary_Drill_deltaP_95th"
,"Rotary_Drill_Qin_05th"
,"Rotary_Drill_Qin_avg"
,"Rotary_Drill_Qin_95th"
,"Slide_Drill_WOB_05th"
,"Slide_Drill_WOB_avg"
,"Slide_Drill_WOB_95th"
,"Slide_Drill_Tor_05th"
,"Slide_Drill_Tor_avg"
,"Slide_Drill_Tor_95th"
,"Slide_Drill_SPP_05th"
,"Slide_Drill_SPP_avg"
,"Slide_Drill_SPP_95th"
,"Slide_Drill_deltaP_05th"
,"Slide_Drill_deltaP_avg"
,"Slide_Drill_deltaP_95th"
,"Slide_Drill_Qin_05th"
,"Slide_Drill_Qin_avg"
,"Slide_Drill_Qin_95th"
,"SlipStartTime"
,"SlipEndTime"
,"Bit_State_AtBottom_Start"
,"Bit_State_AtBottom_End"
,"Bit_State_AtBottom_Start_Ts"
,"Bit_State_AtBottom_End_Ts"
,"slips_AtBottom_Ts"
,"adj_SlipStartTime"
,"Start_Pressure_Ts"
,"End_stand_HookLoad_Ts"
,"End_slip_HookLoad_Ts"
,"stand_note"
from gs_tables_db.TRNG_OilGasDrilling_Rig_State_Drilling_Stat_orig;
replace view TRNG_OilGasDrilling.Srfc_Sensor_Parms_PPI_Flat as locking row for access select
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
from gs_tables_db.TRNG_OilGasDrilling_Srfc_Sensor_Parms_PPI_Flat;
replace view TRNG_OilGasDrilling.Srfc_Sensor_Parms_PPI_Flat_Rig_States as locking row for access select
"Well_ID"
,"Well_Bore_ID"
,"Srfc_Sensor_Parm_Ts"
,"Srfc_Sensor_Parm_Dt"
,"RigState_TS_Seconds"
,"Rig_State_Seq_Nbr"
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
,"Depth_Range_Begin_100"
,"Depth_Range_End_100"
,"Depth_Range_Begin_50"
,"Depth_Range_End_50"
,"depth_Range_Begin_10"
,"Depth_Range_End_10"
,"Depth_Range_Begin_1"
,"Depth_Range_End_1"
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
,"hookload_rs"
,"Rig_State_Word"
,"Rig_State_Word_Defn"
,"Rig_State_Word_Micro_State"
,"Prev_Rig_State_Word"
,"Next_Rig_State_Word"
,"CONSTITUENT_POS_CHNG"
,"CONSTITUENT_VAL_CHNG"
,"CONSTITUENT_NM"
,"CONSTITUENT_VAL_STR"
,"Batch_Nbr"
,"LOAD_DT"
,"LOAD_TM"
from gs_tables_db.TRNG_OilGasDrilling_Srfc_Sensor_Parms_PPI_Flat_Rig_States;
replace view TRNG_OilGasDrilling.Wells as locking row for access select
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
from gs_tables_db.TRNG_OilGasDrilling_Wells;
replace view TRNG_OilGasDrilling.Well_Bores_TPL as locking row for access select
"Well_Bore_ID"
,"Well_ID"
,"Cust_ID"
,"Well_Bore_Name"
,"Cust_Well_Bore_ID"
,"Cust_Well_Bore_Name"
,"Well_Bore_Status"
,"Well_Bore_Current_depth_ft"
,"Well_Bore_Start_Ts"
,"Well_Bore_End_Ts"
,"BATCH_NBR"
,"load_date"
,"load_time"
from gs_tables_db.TRNG_OilGasDrilling_Well_Bores_TPL;
replace view TRNG_OilGasDrilling.Well_Rigs as locking row for access select
"Well_ID"
,"WELL_NAME"
,"Rig"
,"EKEY"
,"ReceivedOn"
from gs_tables_db.TRNG_OilGasDrilling_Well_Rigs;
REPLACE VIEW Rig_State_Drilling_Stat_vw AS
LOCKING ROW FOR ACCESS
SELECT
wr.Rig
,wr.Well_Name
,wr.EKEY
,rss.Well_ID
,rss.Well_Bore_ID
,rss.Stand_Id
,rss.MacroState
,rss.StartSeqno
,rss.EndSeqno
,rss.startTime
,rss.startTime as startTime_CST
,rss.endTime
,rss.endTime as endTime_CST
,rss.standDuration_hrs
,rss.standDuration
,rss.Slip_Id
,rss.slipDuration_hrs
,rss.slipDuration
,rss.startDepth
,rss.endDepth
,rss.StandLength
,rss.Conn_BackReaming_sec
,rss.Conn_InSlips_sec
,rss.Conn_OffBottom_sec
,rss.Conn_ToBottom_sec
,rss.Conn_DrillToDrill_sec
,rss.Conn_Survey_sec
,rss.ROP_Net
,rss.ROP_Gross
,rss.Rotary_pct
,rss.Slide_pct
,rss.Rotary_Drill_WOB_05th
,rss.Rotary_Drill_WOB_avg
,rss.Rotary_Drill_WOB_95th
,rss.Rotary_Drill_Tor_05th
,rss.Rotary_Drill_Tor_avg
,rss.Rotary_Drill_Tor_95th
,rss.Rotary_Drill_SPP_05th
,rss.Rotary_Drill_SPP_avg
,rss.Rotary_Drill_SPP_95th
,rss.Rotary_Drill_deltaP_05th
,rss.Rotary_Drill_deltaP_avg
,rss.Rotary_Drill_deltaP_95th
,rss.Rotary_Drill_Qin_05th
,rss.Rotary_Drill_Qin_avg
,rss.Rotary_Drill_Qin_95th
,rss.Slide_Drill_WOB_05th
,rss.Slide_Drill_WOB_avg
,rss.Slide_Drill_WOB_95th
,rss.Slide_Drill_Tor_05th
,rss.Slide_Drill_Tor_avg
,rss.Slide_Drill_Tor_95th
,rss.Slide_Drill_SPP_05th
,rss.Slide_Drill_SPP_avg
,rss.Slide_Drill_SPP_95th
,rss.Slide_Drill_deltaP_05th
,rss.Slide_Drill_deltaP_avg
,rss.Slide_Drill_deltaP_95th
,rss.Slide_Drill_Qin_05th
,rss.Slide_Drill_Qin_avg
,rss.Slide_Drill_Qin_95th
FROM Rig_State_Drilling_Stat rss
,Well_Rigs_vw wr
WHERE wr.Well_ID = rss.Well_ID;

REPLACE VIEW Srfc_Sensor_Parms_PPI_flat_Rig_States_all_vw
    AS LOCKING ROW FOR ACCESS
    SELECT wr.Rig,
        wr.Well_Name,
        wr.EKEY,
        FRS.Well_ID,
        FRS.Well_Bore_ID,
        FRS.Srfc_Sensor_Parm_Ts,
        FRS.Srfc_Sensor_Parm_Dt,
        FRS.DownholeMWDAzimuthRaw,
        FRS.BitMeasuredDepth,
        FRS.BlockHeight,
        FRS.WellboreMeasuredDepth,
        FRS.DownholeMotorDiffernetialPressure AS DownholeMotorDifferentialPressure,
        FRS.FlowOutPercent,
        FRS.DownholeMWDGamma,
        FRS.DownholeMWDToolfaceGravity,
        FRS.HookLoad,
        FRS.DownholeMWDInclinationRaw,
        FRS.DownholeMWDToolfaceMagnetic,
        FRS.DownholeROP,
        FRS.RotaryRPM,
        FRS.MudPumpStrokeRate,
        FRS.MudPumpStrokeRate2,
        FRS.StandPipePressure,
        FRS.RotaryTorque,
        FRS.MudPumpVolumetricRate,
        FRS.WeightOnBit,
        FRS.WellboreToolface,
        FRS.TripSpeed,
        FRS.DownholeMWDGamma_AtBit,
        FRS.DownholeMWDGamma_Continuous,
        FRS.DownholeMWDGammaDepth,
        FRS.Depth_Range_Begin_100,
        FRS.Depth_Range_End_100,
        FRS.Depth_Range_Begin_50,
        FRS.Depth_Range_End_50,
        FRS.Depth_Range_Begin_10,
        FRS.Depth_Range_End_10,
        FRS.Depth_Range_Begin_1,
        FRS.Depth_Range_End_1,
        FRS.Slips_State,
        FRS.stateMacro,
        FRS.bitPosition,
        FRS.bitDirection,
        FRS.blockDirection,
        FRS.blockPosition,
        FRS.isRotating,
        FRS.IsTorque,
        FRS.isDeltaP,
        FRS.isWOB,
        FRS.isSPP,
        FRS.hookload_rs,
        FRS.Rig_State_Word,
        FRS.Rig_State_Word_Micro_State,
        FRS.Rig_state_Word_Defn,
        FRS.Prev_Rig_State_Word,
        FRS.Next_Rig_State_Word,
        FRS.CONSTITUENT_POS_CHNG,
        FRS.CONSTITUENT_VAL_CHNG,
        FRS.CONSTITUENT_NM,
        FRS.CONSTITUENT_VAL_STR,
       
        CASE
            WHEN Rig_State_Word_Micro_State IN ('In Slips','Surface','Slide Drilling','Rotary Drilling','Oscillation','Reaming In','Back Reaming','Hole Conditioning','Static') THEN Rig_State_Word_Micro_State
            WHEN Rig_State_Word_Micro_State IN ('Pumping','Pumping In','Pumping Out') THEN 'Pumping'
        ELSE 'All Others'
        END AS Rig_State_Word_Micro_State_Calc,
             ----Changed/New
        -- 60 seconds per point
        ROUND(CAST(60 AS NUMERIC)/60,0) AS Min_per_Point_60,
           
        CASE WHEN MOD(MINUTE(Srfc_Sensor_Parm_Ts),Min_per_Point_60)=0 THEN Min_per_Point_60 ELSE MOD(MINUTE(Srfc_Sensor_Parm_Ts),Min_per_Point_60) END AS Min_R_60,
       
        Srfc_Sensor_Parm_Ts + CAST((Min_per_Point_60-Min_R_60) AS interval minute) AS Sensor_Date_Time_60,
       
     -- 300 seconds per point
        --converting seconds to minutes
        ROUND(CAST(300 AS NUMERIC)/60,0) AS Min_per_Point_300,
        --getting remainder of minutues
        CASE WHEN MOD(MINUTE(Srfc_Sensor_Parm_Ts),Min_per_Point_300)=0 THEN Min_per_Point_300 ELSE MOD(MINUTE(Srfc_Sensor_Parm_Ts),Min_per_Point_300) END AS Min_R_300,
        --add remaining minutes to TimeStamp
        Srfc_Sensor_Parm_Ts + CAST((Min_per_Point_300-Min_R_300) AS interval minute) AS Sensor_Date_Time_300,
       
       -- 1200 seconds per point
        ROUND(CAST(1200 AS NUMERIC)/60,0) AS Min_per_Point_1200,
           
        CASE WHEN MOD(MINUTE(Srfc_Sensor_Parm_Ts),Min_per_Point_1200)=0 THEN Min_per_Point_1200 ELSE MOD(MINUTE(Srfc_Sensor_Parm_Ts),Min_per_Point_1200) END AS Min_R_1200,
        
        Srfc_Sensor_Parm_Ts + CAST((Min_per_Point_1200-Min_R_1200) AS interval minute) AS Sensor_Date_Time_1200,
        
        -- 3600 seconds per point
        ROUND(CAST(3600 AS NUMERIC)/60,0) AS Min_per_Point_3600,
           
        CASE WHEN MOD(MINUTE(Srfc_Sensor_Parm_Ts),Min_per_Point_3600)=0 THEN Min_per_Point_3600 ELSE MOD(MINUTE(Srfc_Sensor_Parm_Ts),Min_per_Point_3600) END AS Min_R_3600,
           
        Srfc_Sensor_Parm_Ts + CAST((Min_per_Point_3600-Min_R_3600) AS interval minute) AS Sensor_Date_Time_360
       
         FROM TRNG_OilGasDrilling.Srfc_Sensor_Parms_PPI_Flat_Rig_States FRS, --(SEL TOP 1000 * FROM TRNG_OilGasDrilling.Srfc_Sensor_Parms_PPI_Flat_Rig_States) FRS,
            TRNG_OilGasDrilling.Well_Rigs_vw wr -- (SEL TOP 1000 * FROM TRNG_OilGasDrilling.Well_Rigs_vw) wr
        WHERE wr.Well_ID = FRS.Well_ID;

REPLACE VIEW Wells_vw AS LOCKING ROW FOR ACCESS
SELECT *
FROM Wells;

REPLACE VIEW Well_Rigs_vw AS LOCKING ROW FOR ACCESS
SELECT *
FROM Well_Rigs;

