INSERT OVERWRITE TABLE catalog_page SELECT * FROM catalog_page_ext;
analyze table catalog_page COMPUTE STATISTICS  for all columns;

