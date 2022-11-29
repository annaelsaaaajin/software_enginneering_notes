#!/bin/bash 
start_time=`date +%s` 
for i in {1..10}
do
    echo 'begin'$i; 
    ./mul_init 
    echo 'success'$i;
done
stop_time=`date +%s` 
time_use=$(($stop_time-$start_time)) 
echo "Total time use: $time_use "