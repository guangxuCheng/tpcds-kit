INSERT OVERWRITE TABLE income_band SELECT * FROM income_band_ext;
analyze table income_band COMPUTE STATISTICS  for all columns;
