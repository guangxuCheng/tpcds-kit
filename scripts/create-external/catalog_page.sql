create table DB_NAME.catalog_page_ext
(
    cp_catalog_page_sk        int                           ,
    cp_catalog_page_id        varchar(16)                      ,
    cp_start_date_sk          int                           ,
    cp_end_date_sk            int                           ,
    cp_department             varchar(50)                   ,
    cp_catalog_number         int                           ,
    cp_catalog_page_number    int                           ,
    cp_description            varchar(100)                  ,
    cp_type                   varchar(100)                   
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'DATA_FILES_PATH/catalog_page_ext';
