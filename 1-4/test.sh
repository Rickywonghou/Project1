#!/bin/sh
../../start.sh
/usr/local/hadoop/bin/hdfs dfs -rm -r /lab1_2/input/
/usr/local/hadoop/bin/hdfs dfs -rm -r /lab1_2/output/
/usr/local/hadoop/bin/hdfs dfs -mkdir -p /lab1_2/input/
/usr/local/hadoop/bin/hdfs dfs -copyFromLocal ../../mapreduce-test-data/access.log /lab1_2/input/
/usr/local/hadoop/bin/hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.9.2.jar \
-file ../../mapreduce-test-python/lab1_2/mapper.py -mapper ../../mapreduce-test-python/lab1_2/mapper.py \
-file ../../mapreduce-test-python/lab1_2/reducer.py -reducer ../../mapreduce-test-python/lab1_2/reducer.py \
-input /lab1_2/input/* -output /lab1_2/output/
/usr/local/hadoop/bin/hdfs dfs -cat /lab1_2/output/part-00000
/usr/local/hadoop/bin/hdfs dfs -rm -r /lab1_2/input/
/usr/local/hadoop/bin/hdfs dfs -rm -r /lab1_2/output/
../../stop.sh
