INSERT OVERWRITE TABLE store SELECT * FROM store_ext;
analyze table store COMPUTE STATISTICS  for all columns;

