create database TRNG_GLMFraud from Demo_User as perm=0;
create foreign table gs_tables_db.TRNG_GLMFraud_transaction_data, external security gs_tables_db.auth using (location('/gs/storage.googleapis.com/demonow_development/TRNG_GLM_Fraud/transaction_data/'));
replace view TRNG_GLMFraud.transaction_data as locking row for access select
      step,
      "type",
      amount,
      nameOrig,
      oldbalanceOrg,
      newbalanceOrig,
      nameDest,
      oldbalanceDest,
      newbalanceDest,
      isFraud,
      isFlaggedFraud,
      txn_id
from gs_tables_db.TRNG_GLMFraud_transaction_data;