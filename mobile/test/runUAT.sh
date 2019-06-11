#!/bin/bash

# set variables
url=$1

# wait for the app to start
sleep 5 

# ping the app
status_code=$(curl --write-out %{http_code} --out /dev/null --silent ${url})

if [ $status_code == 200 ];
then
	echo "PASS: ${url} is reachable"
else
	echo "FAIL: ${url} is unreachable"
    exit 1
fi
