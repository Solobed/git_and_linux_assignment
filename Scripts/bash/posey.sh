#!/bin/bash

# Retrieving the database name, user name and input directory
DB=$1
USER=$2
INPUT_DIR=$3

# Iterating over the files
for file in "$INPUT_DIR"/*.csv; do
    echo $file
    table_name=$(basename "$file" .csv)
    psql -U $USER -d $DB -c "\COPY $table_name FROM '$file' WITH CSV HEADER"
    echo "Data inserted sucessfully"
done

