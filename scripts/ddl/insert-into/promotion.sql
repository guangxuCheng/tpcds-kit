INSERT OVERWRITE TABLE promotion SELECT * FROM promotion_ext;
analyze table promotion COMPUTE STATISTICS  for all columns;

