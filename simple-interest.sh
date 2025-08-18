#!/bin/bash

# Simple Interest Calculator

# Usage: ./simple-interest.sh <principal> <rate> <time>

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

principal=$1
rate=$2
time=$3

interest=$(echo "$principal * $rate * $time / 100" | bc)

echo "Principal: $principal"
echo "Rate of Interest: $rate%"
echo "Time: $time years"
echo "Simple Interest: $interest"
