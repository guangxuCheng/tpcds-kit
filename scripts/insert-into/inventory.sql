INSERT OVERWRITE TABLE inventory SELECT /*+ COALESCE(10000)*/ * FROM inventory_ext inv;
analyze table inventory COMPUTE STATISTICS  for all columns;
