create table DB_NAME.item_ext
(
    i_item_sk                 int                           ,
    i_item_id                 varchar(16)                      ,
    i_rec_start_date          date                          ,
    i_rec_end_date            date                          ,
    i_item_desc               varchar(200)                  ,
    i_current_price           decimal(7,2)                  ,
    i_wholesale_cost          decimal(7,2)                  ,
    i_brand_id                int                           ,
    i_brand                   varchar(50)                      ,
    i_class_id                int                           ,
    i_class                   varchar(50)                      ,
    i_category_id             int                           ,
    i_category                varchar(50)                      ,
    i_manufact_id             int                           ,
    i_manufact                varchar(50)                      ,
    i_size                    varchar(20)                      ,
    i_formulation             varchar(20)                      ,
    i_color                   varchar(20)                      ,
    i_units                   varchar(10)                      ,
    i_container               varchar(10)                      ,
    i_manager_id              int                           ,
    i_product_name            varchar(50)                       
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'DATA_FILES_PATH/item';