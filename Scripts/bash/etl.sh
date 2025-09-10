#!/bin/bash

# Extract
curl -o raw.csv $URL
echo "Extraction done"
mkdir raw
mv ./raw.csv ./raw

# Checked if raw.csv was saved correctly
if [ -f ./raw/raw.csv ]; then
    echo "The raw.csv file is saved in the directory raw"
else
    echo "A problem occured"
fi

# Transform
# Rename the column Variable_code
sed '1s/Variable_code/variable_code/' ./raw/raw.csv | csvcut -c Year,Value,Units,variable_code > 2023_year_finance.csv
echo "Transformation done"
mkdir Transformed
mv ./2023_year_finance.csv ./Transformed

# Checked if 2023_year_finance.csv was saved correctly
if [ -f ./Transformed/2023_year_finance.csv ]; then
    echo "The 2023_year_finance.csv file is saved in the directory Transformed"
else
    echo "A problem occured"
fi

# Load
mkdir Gold
mv ./Transformed/2023_year_finance.csv ./Gold
echo "Loading done"

# Checked if 2023_year_finance.csv was saved correctly
if [ -f ./Gold/2023_year_finance.csv ]; then
    echo "The 2023_year_finance.csv file is saved in the directory Gold"
else
    echo "A problem occured"
fi

# 2 - Cron Schedulling 0 0 * * * path_of_file/script.sh
