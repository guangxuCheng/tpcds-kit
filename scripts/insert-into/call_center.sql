INSERT OVERWRITE TABLE call_center SELECT * FROM call_center_ext;
analyze table call_center COMPUTE STATISTICS  for all columns;

