INSERT OVERWRITE TABLE store_returns SELECT /*+ COALESCE(1)*/ * FROM store_returns_ext sr;
analyze table store_returns COMPUTE STATISTICS  for all columns;


