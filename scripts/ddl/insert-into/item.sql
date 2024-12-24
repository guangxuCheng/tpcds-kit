INSERT OVERWRITE TABLE item SELECT * FROM item_ext;
analyze table item COMPUTE STATISTICS  for all columns;

