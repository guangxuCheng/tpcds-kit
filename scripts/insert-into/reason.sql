INSERT OVERWRITE TABLE reason SELECT * FROM reason_ext;
analyze table reason COMPUTE STATISTICS  for all columns;

