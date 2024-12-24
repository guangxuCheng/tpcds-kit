INSERT OVERWRITE TABLE ship_mode SELECT * FROM ship_mode_ext;
analyze table ship_mode COMPUTE STATISTICS  for all columns;

