INSERT OVERWRITE TABLE web_sales SELECT  /*+ COALESCE(72)*/ *  FROM web_sales_ext ws;
analyze table web_sales COMPUTE STATISTICS  for all columns;
