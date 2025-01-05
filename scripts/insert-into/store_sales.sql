INSERT OVERWRITE TABLE store_sales SELECT /*+ COALESCE(10000)*/ * FROM store_sales_ext ss;
analyze table store_sales COMPUTE STATISTICS  for all columns;
