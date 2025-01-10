INSERT OVERWRITE TABLE catalog_sales SELECT * FROM catalog_sales_ext cs DISTRIBUTE BY cs_sold_date_sk, cs_item_sk;
analyze table catalog_sales COMPUTE STATISTICS  for all columns;