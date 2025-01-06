INSERT OVERWRITE TABLE inventory SELECT * FROM inventory_ext inv;
analyze table inventory COMPUTE STATISTICS  for all columns;
