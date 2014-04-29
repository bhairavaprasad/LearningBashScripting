#!/bin/bash

count=0
while read line; do
  ((++count))
  printf "%2d: %s\n" "$count" "${line#my}"
done < <(grep ^my /usr/share/dict/words)
echo "==> $count words processed"
