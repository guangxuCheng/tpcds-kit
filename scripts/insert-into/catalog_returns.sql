INSERT OVERWRITE TABLE catalog_returns SELECT * FROM catalog_returns_ext DISTRIBUTE BY cr_returned_date_sk;
analyze table catalog_returns COMPUTE STATISTICS  for all columns;
