#!/bin/bash

export spark_redis_jar="./spark-redis/target/spark-redis_2.12-3.0.0-SNAPSHOT-jar-with-dependencies.jar"
export SPARK_HOME='/home/dvirdukhan/spark-3.2.1-bin-hadoop3.2'
export PYTHONPATH="./venv/bin"
export PYSPARK_PYTHON=python
export PYSPARK_DRIVER_PYTHON="jupyter" 
export PYSPARK_DRIVER_PYTHON_OPTS="lab"
export REDIS_HOST="cloud host name"
export REDIS_PORT="cloud port"
export REDIS_PASSWORD="cloud password"
export REDIS_USER="cloud username"

rm -rf feature_repo_cloud/data
rm -rf feature_repo_cloud/.ipynb_checkpoints

pyspark  --conf "spark.redis.host=$REDIS_HOST" --conf "spark.redis.port=$REDIS_PORT" --jars $spark_redis_jar --conf "spark.redis.auth=$REDIS_PASSWORD"
