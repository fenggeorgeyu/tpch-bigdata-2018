#!/bin/bash

tpch_dir=$1

$HADOOP_HOME/bin/hadoop fs -mkdir -p ${tpch_dir}/ 
$HADOOP_HOME/bin/hadoop fs -chmod 755 ${tpch_dir}/
echo "mkdir ${tpch_dir}/"

table_list=(
customer
lineitem
nation
order
part
partsupp
region
supplier
)

for table in "${table_list[@]}"
do
	$HADOOP_HOME/bin/hadoop fs -mkdir ${tpch_dir}/${table}
	echo "mkdir "${table}
done

for table in "${table_list[@]}"
do
	$HADOOP_HOME/bin/hadoop fs -rm ${tpch_dir}/${table}/${table}.tbl
	$HADOOP_HOME/bin/hadoop fs -copyFromLocal ${table}.tbl ${tpch_dir}/${table}/
	echo ${table}".tbl copied to HDFS"
done

for table in "${table_list[@]}"
do
	hadoop fs -ls -h ${tpch_dir}/${table}/
done



