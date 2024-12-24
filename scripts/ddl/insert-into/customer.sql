INSERT OVERWRITE TABLE customer SELECT * FROM customer_ext;
analyze table customer COMPUTE STATISTICS  for all columns;
