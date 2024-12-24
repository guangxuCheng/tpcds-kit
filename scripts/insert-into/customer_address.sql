INSERT OVERWRITE TABLE customer_address SELECT * FROM customer_address_ext;
analyze table customer_address COMPUTE STATISTICS  for all columns;
