INSERT OVERWRITE TABLE inventory SELECT /*+ COALESCE(1)*/ * FROM inventory_ext inv;
analyze table inventory COMPUTE STATISTICS  for all columns;
