create table DB_NAME.household_demographics_ext
(
    hd_demo_sk                int                           ,
    hd_income_band_sk         int                           ,
    hd_buy_potential          varchar(15)                      ,
    hd_dep_count              int                           ,
    hd_vehicle_count          int                            
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'DATA_FILES_PATH/household_demographics_ext';