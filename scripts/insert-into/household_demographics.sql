INSERT OVERWRITE TABLE household_demographics SELECT * FROM household_demographics_ext;
analyze table household_demographics COMPUTE STATISTICS  for all columns;
