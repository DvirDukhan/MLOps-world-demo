# MLOps-world-demo

This demo shows the usage of Redis in different scenarios of MLOps:
1. Spark/pyspark - use redis-spark to write processed data frames to Redis as online feature store
1. Feast - Use Redis as an online feature store with Feast.

This demo contains three notebooks:
1. 01-data.ipynb - showing the data that is treated as stream or offline store data source.
1. 02-spark.ipynb - showing how to use pyspark with spark-redis.
1. 03-feast-{local/cloud}.ipynb - showing how to use Redis with Feast


## Setup
### clone
```
git clone https://github.com/DvirDukhan/MLOps-world-demo.git --recursive
```
This will clone this repository as well as the spark-redis repository.

### build spark redis
Make sure you have maven and JDK8 installed on your machine
```
cd spark-redis
mvn clean package -DskipTests
```
### Install python packages

create and activate a virtual env:
```
python3 -m venv venv
source venv/bin/activate
```

Install poetry and python dependencies. This will install every dependency in the `pyproject.toml` file:
```
pip install poetry
poetry install
```


## Run the demo
### local
Edit the `start_demo_local.sh` file and modify the `SPARK_HOME` value to point to your spark home directory
.
Make sure you have a redis instance running locally on your machine and call

```
./start_demo_local.sh
```
This will lunch a jupyter server where and will share the website address where you can click and open the jupyter lab site where the notebooks are available.

### cloud
Edit the `start_demo_cloud.sh` file and modify:
1. `SPARK_HOME` value to point to your spark home directory.
1. `REDIS_HOST` to match your cloud endpoint host.
1. `REDIS_PORT` to match your cloud endpoint port.
1. `REDIS_PASSWORD` to match your cloud endpoint password.
1. `REDIS_USER` to match your cloud endpoint user.

Make sure you have a redis instance running locally on your machine and call
```
./start_demo_cloud.sh
```
This will lunch a jupyter server where and will share the website address where you can click and open the jupyter lab site where the notebooks are available.


