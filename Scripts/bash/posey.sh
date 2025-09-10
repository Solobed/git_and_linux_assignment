#!/bin/bash

# Retrieving the database name, user name and input directory
db=$1
user=$2
input_dir=$3

# Iterating over the files
for file in "$input_dir"/*.csv; do
    echo $file
    table_name=$(basename "$file" .csv)
    psql -U $user -d $db -c "\COPY $table_name FROM '$file' WITH CSV HEADER"
    echo "Data inserted sucessfully"
done

