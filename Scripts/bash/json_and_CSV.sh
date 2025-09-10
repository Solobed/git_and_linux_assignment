#!/bin/bash

# Retrieving input and output directory paths
input_folder=$1
output_folder=$2

# Check if the directories exist
if [ -d $input_folder ] && [ -d $output_folder ] ; then
    # Moving Files
    mv "$input_folder"/*.json "$input_folder"/*.csv "$output_folder"
    echo "The files have been moved sucessfully"
else
    echo "Please check if $input_folder and $output_folder exist"
fi
