INSERT OVERWRITE TABLE date_dim SELECT * FROM date_dim_ext;
analyze table date_dim COMPUTE STATISTICS  for all columns;
