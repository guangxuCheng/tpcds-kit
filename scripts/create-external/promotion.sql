create table DB_NAME.promotion_ext
(
    p_promo_sk                int                           ,
    p_promo_id                varchar(16)                      ,
    p_start_date_sk           int                           ,
    p_end_date_sk             int                           ,
    p_item_sk                 int                           ,
    p_cost                    decimal(15,2)                 ,
    p_response_target         int                           ,
    p_promo_name              varchar(50)                      ,
    p_channel_dmail           varchar(1)                       ,
    p_channel_email           varchar(1)                       ,
    p_channel_catalog         varchar(1)                       ,
    p_channel_tv              varchar(1)                       ,
    p_channel_radio           varchar(1)                       ,
    p_channel_press           varchar(1)                       ,
    p_channel_event           varchar(1)                       ,
    p_channel_demo            varchar(1)                       ,
    p_channel_details         varchar(100)                  ,
    p_purpose                 varchar(15)                      ,
    p_discount_active         varchar(1)                        
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'DATA_FILES_PATH/promotion';