create table DB_NAME.customer_demographics_ext
(
    cd_demo_sk                int                           ,
    cd_gender                 varchar(1)                       ,
    cd_marital_status         varchar(1)                       ,
    cd_education_status       varchar(20)                      ,
    cd_purchase_estimate      int                           ,
    cd_credit_rating          varchar(10)                      ,
    cd_dep_count              int                           ,
    cd_dep_employed_count     int                           ,
    cd_dep_college_count      int                            
) 
USING com.databricks.spark.csv OPTIONS ( `inferSchema` 'false', `header` 'false', `delimiter` '|', nullValue '')
LOCATION 'DATA_FILES_PATH/customer_demographics' ;
