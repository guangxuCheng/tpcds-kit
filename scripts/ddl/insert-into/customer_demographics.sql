INSERT OVERWRITE TABLE customer_demographics SELECT * FROM customer_demographics_ext;
analyze table customer_demographics COMPUTE STATISTICS  for all columns;
