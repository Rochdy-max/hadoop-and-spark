cd /root

# Start Hadoop
./start-hadoop.sh

# Setup HDFS
echo "Setting up HDFS"
hdfs dfs -mkdir /spark-logs
hdfs dfs -mkdir /user
hdfs dfs -mkdir /user/root

# Start spark history server
echo "Starting spark history server"
${SPARK_HOME}/sbin/start-history-server.sh
