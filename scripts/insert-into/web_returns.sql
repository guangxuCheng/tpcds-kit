INSERT OVERWRITE TABLE web_returns SELECT * FROM web_returns_ext DISTRIBUTE BY wr_returned_date_sk;
analyze table web_returns COMPUTE STATISTICS  for all columns;
