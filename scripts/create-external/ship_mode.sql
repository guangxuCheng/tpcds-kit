create table DB_NAME.ship_mode_ext
(
    sm_ship_mode_sk           int                           ,
    sm_ship_mode_id           varchar(16)                      ,
    sm_type                   varchar(30)                      ,
    sm_code                   varchar(10)                      ,
    sm_carrier                varchar(20)                      ,
    sm_contract               varchar(20)                       
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'DATA_FILES_PATH/ship_mode' ;
