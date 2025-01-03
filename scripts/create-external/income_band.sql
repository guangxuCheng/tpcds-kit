create table DB_NAME.income_band_ext
(
    ib_income_band_sk         int                           ,
    ib_lower_bound            int                           ,
    ib_upper_bound            int                            
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'DATA_FILES_PATH/income_band_ext';