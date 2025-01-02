create table DB_NAME.inventory_ext
(
    inv_date_sk               int                           ,
    inv_item_sk               int                           ,
    inv_warehouse_sk          int                           ,
    inv_quantity_on_hand      int                            
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'DATA_FILES_PATH/inventory' ;