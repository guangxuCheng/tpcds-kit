INSERT OVERWRITE TABLE catalog_sales SELECT * FROM catalog_sales_ext cs;
analyze table catalog_sales COMPUTE STATISTICS  for all columns;
