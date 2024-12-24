INSERT OVERWRITE TABLE time_dim SELECT * FROM time_dim_ext;
analyze table time_dim COMPUTE STATISTICS  for all columns;

