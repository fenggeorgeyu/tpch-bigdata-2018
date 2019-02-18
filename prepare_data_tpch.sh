
tpch_dir=/data/tpch10g

echo ${tpch_dir}

# $HADOOP_HOME/bin/hadoop fs -mkdir ${tpch_dir}/ 
# $HADOOP_HOME/bin/hadoop fs -chmod 755 ${tpch_dir}/
# echo "mkdir ${tpch_dir}/"

$HADOOP_HOME/bin/hadoop fs -mkdir -p ${tpch_dir}/customer
echo "mkdir customer"

$HADOOP_HOME/bin/hadoop fs -mkdir -p ${tpch_dir}/lineitem
echo "mkdir lineitem"

$HADOOP_HOME/bin/hadoop fs -mkdir -p ${tpch_dir}/nation
echo "mkdir nation"

$HADOOP_HOME/bin/hadoop fs -mkdir -p ${tpch_dir}/order
echo "mkdir order"

$HADOOP_HOME/bin/hadoop fs -mkdir -p ${tpch_dir}/part
echo "mkdir part"

$HADOOP_HOME/bin/hadoop fs -mkdir -p ${tpch_dir}/partsupp
echo "mkdir partsupp"

$HADOOP_HOME/bin/hadoop fs -mkdir -p ${tpch_dir}/region
echo "mkdir region"

$HADOOP_HOME/bin/hadoop fs -mkdir -p ${tpch_dir}/supplier
echo "mkdir supplier"

$HADOOP_HOME/bin/hadoop fs -rm ${tpch_dir}/customer/customer.tbl
$HADOOP_HOME/bin/hadoop fs -copyFromLocal customer.tbl ${tpch_dir}/customer/
echo "customer"

$HADOOP_HOME/bin/hadoop fs -rm ${tpch_dir}/lineitem/lineitem.tbl
$HADOOP_HOME/bin/hadoop fs -copyFromLocal lineitem.tbl ${tpch_dir}/lineitem/
echo "lineitem"

$HADOOP_HOME/bin/hadoop fs -rm ${tpch_dir}/nation/nation.tbl
$HADOOP_HOME/bin/hadoop fs -copyFromLocal nation.tbl ${tpch_dir}/nation/
echo "nation"

$HADOOP_HOME/bin/hadoop fs -rm ${tpch_dir}/orders/order.tbl
$HADOOP_HOME/bin/hadoop fs -copyFromLocal order.tbl ${tpch_dir}/order/
echo "orders"

$HADOOP_HOME/bin/hadoop fs -rm ${tpch_dir}/part/part.tbl
$HADOOP_HOME/bin/hadoop fs -copyFromLocal part.tbl ${tpch_dir}/part/
echo "part"

$HADOOP_HOME/bin/hadoop fs -rm ${tpch_dir}/partsupp/partsupp.tbl
$HADOOP_HOME/bin/hadoop fs -copyFromLocal partsupp.tbl ${tpch_dir}/partsupp/
echo "partsupp"

$HADOOP_HOME/bin/hadoop fs -rm ${tpch_dir}/region/region.tbl
$HADOOP_HOME/bin/hadoop fs -copyFromLocal region.tbl ${tpch_dir}/region/
echo "region"

$HADOOP_HOME/bin/hadoop fs -rm ${tpch_dir}/supplier/supplier.tbl
$HADOOP_HOME/bin/hadoop fs -copyFromLocal supplier.tbl ${tpch_dir}/supplier/
echo "supplier"