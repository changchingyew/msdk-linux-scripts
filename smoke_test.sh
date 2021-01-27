#!/bin/bash
CSV_FILE=smoke_test.csv
while IFS=, read -r field1 field2
do
    echo "$field1"
    exec $field2
done < $CSV_FILE
