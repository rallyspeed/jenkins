#!/bin/bash

# set variables
url=$1
sleep_time=$2

# wait for the app to start
sleep ${sleep_time}

# ping the app
status_code=$(curl -LI ${url} -w %{http_code} -o /dev/null -s)

if [ $status_code == 200 ];
then
	echo "PASS: ${url} is reachable"
else
	echo "FAIL: ${url} is unreachable"
    exit 1
fi
