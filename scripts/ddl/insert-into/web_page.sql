INSERT OVERWRITE TABLE web_page SELECT * FROM web_page_ext;
analyze table web_page COMPUTE STATISTICS  for all columns;
