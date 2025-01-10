INSERT OVERWRITE TABLE store_sales SELECT * FROM store_sales_ext ss DISTRIBUTE BY ss_sold_date_sk;
analyze table store_sales COMPUTE STATISTICS  for all columns;
