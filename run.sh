
wget http://www.gutenberg.org/files/25665/25665.txt
hadoop fs -mkdir /wordcount-in
hadoop fs -mkdir /wordcount-out
hadoop fs -copyFromLocal 25665.txt /wordcount-in
hadoop jar hadoop-mapreduce-examples-2.4.0.jar  wordcount /wordcount-in/*txt /wordcount-out/run1
hadoop jar hadoop-mapreduce-examples-2.4.0.jar teragen 1000000 /teragen-out

