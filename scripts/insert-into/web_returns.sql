INSERT OVERWRITE TABLE web_returns SELECT /*+ COALESCE(10000)*/ * FROM web_returns_ext;
analyze table web_returns COMPUTE STATISTICS  for all columns;
