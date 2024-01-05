-- sysadmin, securityadmin or sysadmin role can create warehouse
use role sysadmin;

create or replace warehouse compute_warehouse
with
warehouse_size=XSMALL
max_cluster_count = 3
auto_suspend = 300
auto_resume = true
initially_suspended = true
comment = 'This is another warehouse. Suspend in seconds';

drop warehouse compute_warehouse;

-- Loading data
--Rename data base & creating the table + meta data

ALTER DATABASE FIRST_DB RENAME TO OUR_FIRST_DB; 

CREATE TABLE "OUR_FIRST_DB"."PUBLIC"."LOAN_PAYMENT" (
  "Loan_ID" STRING,
  "loan_status" STRING,
  "Principal" STRING,
  "terms" STRING,
  "effective_date" STRING,
  "due_date" STRING,
  "paid_off_time" STRING,
  "past_due_days" STRING,
  "age" STRING,
  "education" STRING,
  "Gender" STRING);
  
  
 //Check that table is empy
 USE DATABASE OUR_FIRST_DB;

 SELECT * FROM LOAN_PAYMENT;

 
 //Loading the data from S3 bucket
  
 COPY INTO LOAN_PAYMENT
    FROM s3://bucketsnowflakes3/Loan_payments_data.csv
    file_format = (type = csv 
                   field_delimiter = ',' 
                   skip_header=1);
    

//Validate
 SELECT * FROM LOAN_PAYMENT;
