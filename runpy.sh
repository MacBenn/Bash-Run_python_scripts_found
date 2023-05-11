#!/bin/bash

# Set the name of the Python script you want to search for
SCRIPT_NAME="yourscript.py"

# Set the directory to start the search from
SEARCH_DIR="/home/server"

# Find all directories containing the script
SCRIPT_DIRS=$(find $SEARCH_DIR -name $SCRIPT_NAME -type f -printf '%h\n' | s>

# Execute the script in each directory
for DIR in $SCRIPT_DIRS
do
    cd $DIR
    python3 $SCRIPT_NAME
done
