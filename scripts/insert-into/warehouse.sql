INSERT OVERWRITE TABLE warehouse SELECT * FROM warehouse_ext;
analyze table warehouse COMPUTE STATISTICS  for all columns;

