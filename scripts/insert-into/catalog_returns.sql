INSERT OVERWRITE TABLE catalog_returns * FROM catalog_returns_ext DISTRIBUTE BY cr_returned_date_sk, cr_item_sk;
analyze table catalog_returns COMPUTE STATISTICS  for all columns;
