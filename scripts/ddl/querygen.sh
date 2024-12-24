
cd /tmp/tpcds_100000_dbsql_qual_run_3/dstools
mkdir -p /tmp/tpcds_100000_dbsql_qual_run_3/Clause_7//sqls
/tmp/tpcds_100000_dbsql_qual_run_3/dstools/dsqgen -DIRECTORY ../../scripts/query_templates/ -INPUT ../../scripts/query_templates/templates.lst -VERBOSE Y -SCALE 100000 -DIALECT databricks -OUTPUT_DIR /tmp/tpcds_100000_dbsql_qual_run_3/Clause_7//sqls -STREAMS 9 -rngseed 08182213409
>> /tmp/tpcds_100000_dbsql_qual_run_3/Clause_3//logs/querygen.log 2>&1
echo "OK"
  