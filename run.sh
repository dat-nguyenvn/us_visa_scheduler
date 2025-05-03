#!/bin/bash

# Number of times to run the script
NUM_ITERATIONS=5
cooldown=30 #in minutes
for ((i=1; i<=NUM_ITERATIONS; i++))
do
    echo "Running iteration $i..."
    python3 visa.py

    if [ $i -lt $NUM_ITERATIONS ]; then
        echo "Sleeping for 30 minutes..."
        sleep cooldown*60  
    fi
done

echo "All iterations complete."
