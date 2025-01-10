INSERT OVERWRITE TABLE store_returns SELECT * FROM store_returns_ext sr DISTRIBUTE BY sr_returned_date_sk, bucket(3, sr_item_sk);
analyze table store_returns COMPUTE STATISTICS  for all columns;


