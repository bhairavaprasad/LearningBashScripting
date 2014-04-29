#!/bin/bash
# file: args.sh

echo command: "$0" # This is the command (with full pathname)

# to get the simple "last part" of the full command,
# call external basename operation
echo command: $(basename "$0")  
echo 

# The syntax "$#" gives the number of command-line arguments.
echo number of command line args: "$#"
echo 

echo first:  "$1"
echo second: "$2"
echo third:  "$3"

# "$@" (and "$*") is used to represent 
# all the command line arguments as a single string

echo all: "$@"
