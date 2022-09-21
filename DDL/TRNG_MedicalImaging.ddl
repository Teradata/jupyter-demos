create database TRNG_MedicalImaging from Demo_User as perm=0;
create foreign table gs_tables_db."TRNG_MedicalImaging_sec_patient", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MedicalImaging/sec-patient/'));
create foreign table gs_tables_db."TRNG_MedicalImaging_r_image_device", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MedicalImaging/r-image-device/'));
create foreign table gs_tables_db."TRNG_MedicalImaging_d_device", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MedicalImaging/d-device/'));
create foreign table gs_tables_db."TRNG_MedicalImaging_d_patient", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MedicalImaging/d-patient/'));
create foreign table gs_tables_db."TRNG_MedicalImaging_s_dicom_t", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MedicalImaging/s-dicom-t/'));
create foreign table gs_tables_db."TRNG_MedicalImaging_stg_clinical_case", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MedicalImaging/stg-clinical-case/'));
create foreign table gs_tables_db."TRNG_MedicalImaging_k_case", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MedicalImaging/k-case/'));
create foreign table gs_tables_db."TRNG_MedicalImaging_sec_auth_user_patient", external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG-MedicalImaging/sec-auth-user-patient/'));
replace view TRNG_MedicalImaging.d_device as locking row for access select
"device_id"
,"manufacturer_desc"
,"model_nm"
,"software_versions_dsc"
from gs_tables_db.TRNG_MedicalImaging_d_device;
replace view TRNG_MedicalImaging.d_patient as locking row for access select
"patient_id"
,"gender"
,"age"
,"ethnicity"
,"height_in_cm"
,"weight_in_kg"
,"BMI"
,"alcohol_consumption"
,"tobacco_smoking_history"
from gs_tables_db.TRNG_MedicalImaging_d_patient;
replace view TRNG_MedicalImaging.k_case as locking row for access select
"case_id"
,"case_nb"
from gs_tables_db.TRNG_MedicalImaging_k_case;
replace view TRNG_MedicalImaging.r_image_device as locking row for access select
"image_id"
,"device_id"
from gs_tables_db.TRNG_MedicalImaging_r_image_device;
replace view TRNG_MedicalImaging.sec_auth_user_patient as locking row for access select
"patient_id"
,"user_id"
from gs_tables_db.TRNG_MedicalImaging_sec_auth_user_patient;
replace view TRNG_MedicalImaging.sec_patient as locking row for access select
"patient_id"
,"system_ts"
,"AdditionalPatientHistory_val"
,"ConfidentialityConstraintonPatientDataDescription_val"
,"PatientID_val"
,"PatientsBirthDate_val"
,"PatientsBirthName_val"
,"PatientsBirthTime_val"
,"PatientsInstitutionResidence_val"
,"PatientsInsurancePlanCodeSequence_val"
,"PatientsMothersBirthName_val"
,"PatientsName_val"
,"PatientsTelephoneNumbers_val"
from gs_tables_db.TRNG_MedicalImaging_sec_patient;
replace view TRNG_MedicalImaging.stg_clinical_case as locking row for access select
"case_cd"
,"tag_element_cd"
,"tag_value_dsc"
,"system_ts"
from gs_tables_db.TRNG_MedicalImaging_stg_clinical_case;
replace view TRNG_MedicalImaging.s_dicom_t as locking row for access select
"patient_id"
,"case_id"
,"image_id"
,"file_name"
,"case_cd"
,"imagelink"
,"system_ts"
,"AccessionNumber_Value"
,"AcquisitionDate_Value"
,"AcquisitionDatetime_Value"
,"AcquisitionNumber_Value"
,"AcquisitionTime_Value"
,"AdditionalPatientHistory_Value"
,"AdmittingDiagnosesDescription_Value"
,"BitsAllocated_Value"
,"BitsStored_Value"
,"BodyPartExamined_Value"
,"BurnedInAnnotation_Value"
,"CodeValue_Value"
,"CodingSchemeVersion_Value"
,"Columns_Value"
,"ContentDate_Value"
,"ContentTime_Value"
,"ContrastAllergies_Value"
,"ContrastFlowDuration_Value"
,"ContrastFlowRate_Value"
,"ContrastBolusAgent_Value"
,"ContrastBolusIngredientConcentration_Value"
,"ContrastBolusRoute_Value"
,"ContrastBolusStartTime_Value"
,"ContrastBolusStopTime_Value"
,"ContrastBolusTotalDose_Value"
,"ContrastBolusVolume_Value"
,"ConvolutionKernel_Value"
,"DataCollectionDiameter_Value"
,"DateofLastCalibration_Value"
,"DateofSecondaryCapture_Value"
,"DerivationDescription_Value"
,"DeviceSerialNumber_Value"
,"DistanceSourcetoDetector_Value"
,"DistanceSourcetoPatient_Value"
,"EthnicGroup_Value"
,"Exposure_Value"
,"ExposureTime_Value"
,"FillerOrderNumberImagingServiceRequest_Value"
,"FilterType_Value"
,"FocalSpot_Value"
,"FrameofReferenceUID_Value"
,"GantryDetectorTilt_Value"
,"GeneratorPower_Value"
,"HighBit_Value"
,"ImageComments_Value"
,"ImageLaterality_Value"
,"ImageOrientationPatient_Value"
,"ImagePositionPatient_Value"
,"ImageType_Value"
,"ImagesinAcquisition_Value"
,"InstanceCreationDate_Value"
,"InstanceCreationTime_Value"
,"InstanceCreatorUID_Value"
,"InstanceNumber_Value"
,"KVP_Value"
,"LargestImagePixelValue_Value"
,"Laterality_Value"
,"LossyImageCompression_Value"
,"LossyImageCompressionRatio_Value"
,"Manufacturer_Value"
,"ManufacturersModelName_Value"
,"MedicalAlerts_Value"
,"Modality_Value"
,"NumberofRotations_Value"
,"NumberofStudyRelatedInstances_Value"
,"Occupation_Value"
,"PatientComments_Value"
,"PatientID_Value"
,"PatientOrientation_Value"
,"PatientPosition_Value"
,"PatientState_Value"
,"PatientsAge_Value"
,"PatientsBirthDate_Value"
,"PatientsName_Value"
,"PatientsSex_Value"
,"PatientsSize_Value"
,"PatientsWeight_Value"
,"PerformedProcedureStepDescription_Value"
,"PerformedProcedureStepStartDate_Value"
,"PerformedProcedureStepStartTime_Value"
,"PhotometricInterpretation_Value"
,"PixelAspectRatio_Value"
,"PixelPaddingValue_Value"
,"PixelRepresentation_Value"
,"PixelSpacing_Value"
,"PlanarConfiguration_Value"
,"PositionReferenceIndicator_Value"
,"PreMedication_Value"
,"PregnancyStatus_Value"
,"PresentationLUTShape_Value"
,"ProtocolName_Value"
,"QualityControlImage_Value"
,"ReasonforStudy_Value"
,"ReconstructionDiameter_Value"
,"ReferringPhysiciansName_Value"
,"RequestedContrastAgent_Value"
,"RequestedProcedureDescription_Value"
,"RequestedProcedurePriority_Value"
,"RescaleIntercept_Value"
,"RescaleSlope_Value"
,"RescaleType_Value"
,"RotationDirection_Value"
,"Rows_Value"
,"SOPClassUID_Value"
,"SOPInstanceUID_Value"
,"SamplesperPixel_Value"
,"ScanOptions_Value"
,"ScanningSequence_Value"
,"ScheduledProcedureStepDescription_Value"
,"ScheduledProcedureStepEndDate_Value"
,"ScheduledProcedureStepEndTime_Value"
,"ScheduledProcedureStepID_Value"
,"ScheduledProcedureStepStartDate_Value"
,"ScheduledProcedureStepStartTime_Value"
,"SecondaryCaptureDeviceManufacturer_Value"
,"SecondaryCaptureDeviceManufacturersModelName_Value"
,"SecondaryCaptureDeviceSoftwareVersion_Value"
,"SeriesDate_Value"
,"SeriesDescription_Value"
,"SeriesInstanceUID_Value"
,"SeriesNumber_Value"
,"SeriesTime_Value"
,"SliceLocation_Value"
,"SliceThickness_Value"
,"SmallestImagePixelValue_Value"
,"SmokingStatus_Value"
,"SoftwareVersion_Value"
,"SpacingBetweenSlices_Value"
,"SpatialResolution_Value"
,"SpecialNeeds_Value"
,"SpecificCharacterSet_Value"
,"StudyArrivalDate_Value"
,"StudyArrivalTime_Value"
,"StudyComments_Value"
,"StudyCompletionDate_Value"
,"StudyCompletionTime_Value"
,"StudyDate_Value"
,"StudyDescription_Value"
,"StudyID_Value"
,"StudyInstanceUID_Value"
,"StudyPriorityID_Value"
,"StudyStatusID_Value"
,"StudyTime_Value"
,"TableHeight_Value"
,"TimeofLastCalibration_Value"
,"WindowCenter_Value"
,"WindowCenterWidthExplanation_Value"
,"WindowWidth_Value"
,"XrayTubeCurrent_Value"
from gs_tables_db.TRNG_MedicalImaging_s_dicom_t;
REPLACE VIEW d_clinical_case AS
SELECT * FROM AntiSelect (
  ON (
    SELECT --pc.patient_id, 
    cc.*
    FROM s_clinical_case cc
    --left join ADLSLSAPAC_POC_SH.s_patient_case pc
    --	on pc.case_id=cc.case_id
     )
  USING 
  --Exclude sensitive attributes
  Exclude ('case_cd') 
 ) a;

REPLACE VIEW d_sec_patient AS
SELECT p.* , ps.user_id
FROM sec_patient p
JOIN sec_auth_user_patient ps 
 ON ps.patient_id=p.patient_id
 AND ps.user_id=user;

REPLACE VIEW f_imaging AS
SELECT
case_id
,patient_id
,dk.device_id
,imageLink
,AccessionNumber_Value
,(AcquisitionDate_Value (integer))-19000000 (date) AcquisitionDate_Value
--,AcquisitionDatetime_Value
,AcquisitionNumber_Value
,cast(trim((AcquisitionTime_Value (int)) (format '99:99:99')) as TIME(0)) AcquisitionTime_Value
,AdditionalPatientHistory_Value
--,AdmittingDiagnosesDescription_Value
,BodyPartExamined_Value (VARCHAR(50))
,Columns_Value (integer)
,(ContentDate_Value (integer))-19000000 (date) ContentDate_Value
,cast(trim((ContentTime_Value (int)) (format '99:99:99')) as TIME(0)) ContentTime_Value
/*,ContrastAllergies_Value
,ContrastFlowDuration_Value
,ContrastFlowRate_Value
,ContrastBolusAgent_Value (VARCHAR(10))
,ContrastBolusIngredientConcentration_Value
,ContrastBolusRoute_Value
,cast(trim((ContrastBolusStartTime_Value (int)) (format '99:99:99')) as TIME(0)) ContrastBolusStartTime_Value
,cast(trim((ContrastBolusStopTime_Value (int)) (format '99:99:99')) as TIME(0)) ContrastBolusStopTime_Value
*/
,ContrastBolusTotalDose_Value (float)
,ContrastBolusVolume_Value (float)
,ConvolutionKernel_Value
,DataCollectionDiameter_Value (float)
,(DateofLastCalibration_Value (integer))-19000000 (date) DateofLastCalibration_Value
,DerivationDescription_Value
,DistanceSourcetoDetector_Value (float)
,DistanceSourcetoPatient_Value (float)
,Exposure_Value (int)
,ExposureTime_Value (int)
,FilterType_Value (VARCHAR(20))
,FocalSpot_Value (VARCHAR(20))
,FrameofReferenceUID_Value (CHAR(64))
,GantryDetectorTilt_Value (CHAR(4))
,GeneratorPower_Value (int)
,ImageComments_Value
,ImageOrientationPatient_Value (VARCHAR(100))
,ImagePositionPatient_Value (VARCHAR(100))
,ImageType_Value (VARCHAR(100))
,ImagesinAcquisition_Value (VARCHAR(100))
,(InstanceCreationDate_Value (integer))-19000000 (date) InstanceCreationDate_Value
,cast(trim((InstanceCreationTime_Value (int)) (format '99:99:99')) as TIME(0)) InstanceCreationTime_Value
,InstanceNumber_Value (int)
,KVP_Value (int)
,Modality_Value (CHAR(2))
,PatientComments_Value (VARCHAR(100))
,PatientOrientation_Value (VARCHAR(100))
,PatientPosition_Value (CHAR(3))
,PerformedProcedureStepDescription_Value
,(PerformedProcedureStepStartDate_Value (integer))-19000000 (date) PerformedProcedureStepStartDate_Value
,cast(trim((PerformedProcedureStepStartTime_Value (int)) (format '99:99:99')) as TIME(0)) PerformedProcedureStepStartTime_Value
,PhotometricInterpretation_Value (VARCHAR(100))
,PixelAspectRatio_Value  (CHAR(4))
,PixelPaddingValue_Value  (VARCHAR(10))
,PixelRepresentation_Value (SMALLINT)
,PixelSpacing_Value
,PositionReferenceIndicator_Value (CHAR(2))
,case when PregnancyStatus_Value = '(,1)' then 1 else 4 end PregnancyStatus_Value 
,PresentationLUTShape_Value (VARCHAR(10))
,ProtocolName_Value
,ReasonforStudy_Value
,ReconstructionDiameter_Value (float)
,RequestedProcedureDescription_Value
,RescaleIntercept_Value (integer)
,RescaleSlope_Value (integer)
,RescaleType_Value (CHAR(2))
,RotationDirection_Value (CHAR(2))
,Rows_Value (int)
,SOPClassUID_Value
,SOPInstanceUID_Value (CHAR(64))
,SamplesperPixel_Value (SMALLINT)
,ScanOptions_Value
,ScheduledProcedureStepDescription_Value
,(ScheduledProcedureStepEndDate_Value (integer))-19000000 (date) ScheduledProcedureStepEndDate_Value
,cast(trim((ScheduledProcedureStepEndTime_Value (int)) (format '99:99:99')) as TIME(0)) ScheduledProcedureStepEndTime_Value
,ScheduledProcedureStepID_Value
,(ScheduledProcedureStepStartDate_Value (integer))-19000000 (date) ScheduledProcedureStepStartDate_Value
,cast(trim((ScheduledProcedureStepStartTime_Value (int)) (format '99:99:99')) as TIME(0)) ScheduledProcedureStepStartTime_Value
--,SecondaryCaptureDeviceManufacturer_Value
--,SecondaryCaptureDeviceManufacturersModelName_Value
,(SeriesDate_Value (integer))-19000000 (date) SeriesDate_Value
,SeriesDescription_Value
,SeriesInstanceUID_Value
,SeriesNumber_Value (smallint)
,SeriesTime_Value (float)
,SliceLocation_Value (float)
,SliceThickness_Value (float)
,SmokingStatus_Value (VARCHAR(10))
,SpacingBetweenSlices_Value (float)
,SpecificCharacterSet_Value (char(10))
,(StudyArrivalDate_Value (integer))-19000000 (date) StudyArrivalDate_Value
,cast(trim((StudyArrivalTime_Value (int)) (format '99:99:99')) as TIME(0)) StudyArrivalTime_Value
,StudyComments_Value
,(StudyCompletionDate_Value (integer))-19000000 (date) StudyCompletionDate_Value
,cast(trim((StudyCompletionTime_Value (int)) (format '99:99:99')) as TIME(0)) StudyCompletionTime_Value
,(StudyDate_Value (integer))-19000000 (date) StudyDate_Value
,StudyDescription_Value
,StudyInstanceUID_Value (CHAR(60))
,StudyPriorityID_Value (CHAR(60))
,StudyStatusID_Value (CHAR(60))
,StudyTime_Value
,TableHeight_Value
,cast(trim((TimeofLastCalibration_Value (int)) (format '99:99:99')) as TIME(0)) TimeofLastCalibration_Value
,WindowCenter_Value (VARCHAR(20))
,WindowCenterWidthExplanation_Value (VARCHAR(100))
,WindowWidth_Value (VARCHAR(10))
,XrayTubeCurrent_Value (int)
from s_dicom_t d
join r_image_device dk
 on d.image_id = dk.image_id;

REPLACE VIEW s_clinical_case as
SELECT 
ck.case_id
,case_cd                       
,BMI (float)                           
,age        (int)                   
,alcohol_consumption           
,cause_of_death_at_12months_follow_up (varchar(50))
,cause_of_death_at_24months_follow_up (varchar(50))
,case when position(' ' in days_from_initial_diagnosis_to_last_contact_at_12months_follow_up) > 0 
 then substr(days_from_initial_diagnosis_to_last_contact_at_12months_follow_up, 1, position(' ' in days_from_initial_diagnosis_to_last_contact_at_12months_follow_up)) 
 else days_from_initial_diagnosis_to_last_contact_at_12months_follow_up 
 end (int) days_from_initial_diagnosis_to_last_contact_at_12months_follow_up
,days_from_initial_diagnosis_to_last_contact_at_24months_follow_up (int)
,days_from_initial_diagnosis_to_new_tumor_event_after_initial_treatment (int)
,days_from_initial_pathologic_diagnosis_to_death_at_12months_follow_up (int)
,days_from_initial_pathologic_diagnosis_to_death_at_24months_follow_up (int)
,discovery_study               (char(3))
,ethnicity                     (varchar(50))
,gender                        (varchar(6))
,height_in_cm                  (int)
,histologic_type               (varchar(50))
,histologic_type_other         (varchar(50))
,cast(inserted as timestamp)  inserted                
,number_of_pack_years_smoked   (float) 
,case when number_of_years_consumed_more_than_2_drinks_per_day_for_men_or_more_than_1_for_women <> 'Unknown' 
 then number_of_years_consumed_more_than_2_drinks_per_day_for_men_or_more_than_1_for_women  
 end number_of_years_consumed_more_than_2_drinks_per_day_for_men_or_more_than_1_for_women
,race                           (varchar(50))
,tobacco_smoking_history        (varchar(100))
,tumor_normal                  (varchar(20))
,tumor_code                    (varchar(10))
,tumor_site                    (varchar(20))
,tumor_size_in_cm              (float)
,tumor_status_at_12months_follow_up (varchar(20))
,tumor_status_at_24months_follow_up (varchar(20))
,cast(updated as timestamp)  updated                      
,vital_status_at_12months_follow_up (varchar(20))
,vital_status_at_24months_follow_up (varchar(20))
,weight_in_kg                  (int)
FROM (sel case_cd, tag_element_cd, tag_value_dsc from stg_clinical_case) a PIVOT (
                   MAX(tag_value_dsc) FOR tag_element_cd                                                                                               
                                       IN ( 'BMI' as BMI,
           'age' as age,
           'alcohol_consumption' as alcohol_consumption,
           'cause_of_death_at_12months_follow_up' as cause_of_death_at_12months_follow_up,
           'cause_of_death_at_24months_follow_up' as cause_of_death_at_24months_follow_up,
           'days_from_initial_diagnosis_to_last_contact_at_12months_follow_up' as days_from_initial_diagnosis_to_last_contact_at_12months_follow_up,
           'days_from_initial_diagnosis_to_last_contact_at_24months_follow_up' as days_from_initial_diagnosis_to_last_contact_at_24months_follow_up,
           'days_from_initial_diagnosis_to_new_tumor_event_after_initial_treatment' as days_from_initial_diagnosis_to_new_tumor_event_after_initial_treatment,
           'days_from_initial_pathologic_diagnosis_to_death_at_12months_follow_up' as days_from_initial_pathologic_diagnosis_to_death_at_12months_follow_up,
           'days_from_initial_pathologic_diagnosis_to_death_at_24months_follow_up' as days_from_initial_pathologic_diagnosis_to_death_at_24months_follow_up,
           'discovery_study' as discovery_study,
           'ethnicity' as ethnicity,
           'gender' as gender,
           'height_in_cm' as height_in_cm,
           'histologic_type' as histologic_type,
           'histologic_type_other' as histologic_type_other,
           'inserted' as inserted,
           'number_of_pack_years_smoked' as number_of_pack_years_smoked,
           'number_of_years_consumed_more_than_2_drinks_per_day_for_men_or_more_than_1_for_women' as number_of_years_consumed_more_than_2_drinks_per_day_for_men_or_more_than_1_for_women,
           'race' as race,
           'tobacco_smoking_history' as tobacco_smoking_history,
           'tumor/normal' as tumor_normal,
           'tumor_code' as tumor_code,
           'tumor_site' as tumor_site,
           'tumor_size_in_cm' as tumor_size_in_cm,
           'tumor_status_at_12months_follow_up' as tumor_status_at_12months_follow_up,
           'tumor_status_at_24months_follow_up' as tumor_status_at_24months_follow_up,
           'updated' as updated,
           'vital_status_at_12months_follow_up' as vital_status_at_12months_follow_up,
           'vital_status_at_24months_follow_up' as vital_status_at_24months_follow_up,
           'weight_in_kg' as weight_in_kg)
                                          )d
join k_case ck
 on d.case_cd = ck.case_nb;

