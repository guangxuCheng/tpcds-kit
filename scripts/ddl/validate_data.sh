
cd /tmp/tpcds_100000_dbsql_qual_run_3/dsdgen_install/databricks-tpcds-kit/v2.13.0rc1/tools
./dsdgen -scale 100000 -validate -vcount 50 -dir /dbfs/mnt/aws-tpcds-audit//tpcds_100000_validation
  