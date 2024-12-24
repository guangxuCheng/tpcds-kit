INSERT OVERWRITE TABLE web_site SELECT * FROM web_site_ext;
analyze table web_site COMPUTE STATISTICS  for all columns;
