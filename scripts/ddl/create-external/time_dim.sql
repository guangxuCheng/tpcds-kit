create table time_dim_ext 
(
    t_time_sk                 int                           ,
    t_time_id                 varchar(16)                      ,
    t_time                    int                           ,
    t_hour                    int                           ,
    t_minute                  int                           ,
    t_second                  int                           ,
    t_am_pm                   varchar(2)                       ,
    t_shift                   varchar(20)                      ,
    t_sub_shift               varchar(20)                      ,
    t_meal_time               varchar(20)                       
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_datafiles_audit/time_dim' ;