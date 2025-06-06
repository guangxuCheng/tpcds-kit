create table DB_NAME.warehouse_ext
(
    w_warehouse_sk            int                           ,
    w_warehouse_id            varchar(16)                      ,
    w_warehouse_name          varchar(20)                   ,
    w_warehouse_sq_ft         int                           ,
    w_street_number           varchar(10)                      ,
    w_street_name             varchar(60)                   ,
    w_street_type             varchar(15)                      ,
    w_suite_number            varchar(10)                      ,
    w_city                    varchar(60)                   ,
    w_county                  varchar(30)                   ,
    w_state                   varchar(2)                       ,
    w_zip                     varchar(10)                      ,
    w_country                 varchar(20)                   ,
    w_gmt_offset              decimal(5,2)                   
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'DATA_FILES_PATH/warehouse';