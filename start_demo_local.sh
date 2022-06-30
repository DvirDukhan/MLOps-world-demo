#!/bin/bash

export spark_redis_jar="./spark-redis/target/spark-redis_2.12-3.0.0-SNAPSHOT-jar-with-dependencies.jar"
export SPARK_HOME='/home/dvirdukhan/spark-3.2.1-bin-hadoop3.2'
export PYTHONPATH="./venv/bin"
export PYSPARK_PYTHON=python
export PYSPARK_DRIVER_PYTHON="jupyter" 
export PYSPARK_DRIVER_PYTHON_OPTS="lab"
export REDIS_HOST="localhost"
export REDIS_PORT="6379"
export REDIS_PASSWORD=""
export REDIS_USER="default"

rm -rf feature_repo_local/data
rm -rf feature_repo_local/.ipynb_checkpoints

pyspark  --conf "spark.redis.host=$REDIS_HOST" --conf "spark.redis.port=$REDIS_PORT" --jars $spark_redis_jar 
