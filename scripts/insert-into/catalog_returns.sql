INSERT OVERWRITE TABLE catalog_returns SELECT /*+ COALESCE(1)*/ * FROM catalog_returns_ext;
analyze table catalog_returns COMPUTE STATISTICS  for all columns;
