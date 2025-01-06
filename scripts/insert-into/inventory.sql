INSERT OVERWRITE TABLE inventory SELECT * FROM inventory_ext inv DISTRIBUTE BY inv_date_sk;
analyze table inventory COMPUTE STATISTICS  for all columns;
