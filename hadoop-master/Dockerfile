FROM liliasfaxi/hadoop-cluster
WORKDIR /root/

# Download and extract Spark
ADD https://dlcdn.apache.org/spark/spark-3.5.1/spark-3.5.1-bin-hadoop3.tgz ./
RUN tar -xzf spark-3.5.1-bin-hadoop3.tgz && rm spark-3.5.1-bin-hadoop3.tgz
RUN mv spark-3.5.1-bin-hadoop3 spark

# Set environment variable SPARK_HOME and add Spark binaries to PATH
ENV SPARK_HOME=/root/spark \
    PATH=${PATH}:${SPARK_HOME}/bin

# Copy Spark configuration
COPY spark-defaults.conf ${SPARK_HOME}/conf/
