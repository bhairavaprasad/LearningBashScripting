#!/bin/bash

str="Hello /there@  1  22  33    Testing/";

printf "test string:\t\t%s\n"           "$str"

result="$(echo "$str" | tr a-z A-Z)"    # using tr in a typical way

printf "%s\t\t%s\n" 'lower-to-upper'    "$result"
printf "%s\t\t%s\n" 'sub T by ** (1)'   "$(echo "$str" | sed 's/T/**/')"
printf "%s\t\t%s\n" 'sub T by ** (2)'   "$(echo "$str" | sed 's/T/**/gi')"

printf "%s\t%s\n" 'sub blank seq. by _' "$(echo "$str" | sed 's/[ ]\+/_/g')"

printf "%s\t%s\n" 'remove trailing /'   "$(echo "$str" | sed 's/\/$//')"

# "\1" is a "back-reference" to a matched substring surrounded by parentheses

printf "%s\t%s\n" 'digit seq.'   "$(echo "$str" | sed 's/\([0-9]\+\)/[\1]/g')"

# awk can easily find portions of a string separated by blank space

printf "%s\t%s\n" 'second chunk of str:' "$(echo "$str" | awk '{ print $2 }')"

# the "grep -q pattern" reports match success or failure via exit status

printf "%s\t" 'str matches digit:' 
if echo "$str" | grep -q '[0-9]'; then echo yes; else echo no; fi

printf "%s\t" 'str matches "ee":' 
if echo "$str" | grep -q 'ee'; then echo yes; else echo no; fi

