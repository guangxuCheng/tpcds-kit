create table reason_ext 
(
    r_reason_sk               int                           ,
    r_reason_id               varchar(16)                      ,
    r_reason_desc             varchar(100)                      
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_datafiles_audit/reason' ;