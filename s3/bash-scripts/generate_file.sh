#!/bin/bash
set -e
OUTPUT_DIR="./temp"
FILE_PREFIX=${1:-files}
mkdir -p $OUTPUT_DIR
rm -rf $OUTPUT_DIR/*
NUM_FILES=$((RANDOM % 6 + 5))
for i in $(seq 1 $NUM_FILES); do
    FILE_NAME="$OUTPUT_DIR/${FILE_PREFIX}_$i.txt"
    head -c 100 </dev/urandom > $FILE_NAME
    echo "Created $FILE_NAME"
done