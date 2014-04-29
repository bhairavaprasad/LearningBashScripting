#!/bin/bash

count=0
grep ^my /usr/share/dict/words | while read line; do
  ((++count))
  printf "%2d: %s\n" "$count" "${line#my}"
done
echo "==> $count words processed"
