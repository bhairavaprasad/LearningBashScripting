#!/bin/bash

declare -r PASS=""

if [ -z "$PASS" ]; then
	#echo in "true" mode
mysql -u root "$@"
else
	#echo in "false" mode
mysql -p"$PASS" -u root "$@"
fi
