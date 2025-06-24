#!/bin/sh

echo "Starting load generator..."
echo "Will make requests with random intervals between 1-10 seconds..."

while true; do
    for i in $(seq 1 20); do
        echo "Making request $i..."
        curl -s "http://httpservice1:8080/?id=$i"
        echo " - Request $i completed"
        # Generate random sleep interval between 1 and 10 seconds
        sleep_time=$(( ( RANDOM % 10 ) + 1 ))
        echo "Sleeping for $sleep_time seconds..."
        sleep $sleep_time
    done
    echo "Completed 20 requests, starting over..."
done 