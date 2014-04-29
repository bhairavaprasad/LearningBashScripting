#!/bin/bash

ZIP=/usr/bin/zip
RM=/bin/rm

[ -x $ZIP ] || { echo "No such executable: $ZIP"; exit 1; }
[ -x $RM ] || { echo "No such executable: $RM"; exit 1; }

if [ $# -eq 0 ]; then
  echo usage: $(basename $0) "<file_or_dir1> ..."
  exit 1
fi

for i in "${@}"; do		      # process all command-line args
  echo "processing: $i"
  if [ ! -d "$i" -a ! -f "$i" ]; then     # not directory, not file
    echo "  $i is not directory, nor file, skipping"
    continue
  else
    i="${i%/}"			      # remove trailing "/" if any
    target="$i.zip"		      # define the target
    if [ -f "$target" ]; then
      echo "  remove old $target"   	     
      $RM $target   		      # remove target if exists
    fi
    if [ -d "$i" ]; then
      $ZIP -r "$target" "$i"   # zip directory recursively
    else
      $ZIP "$target" "$i"      # zip a file
    fi
  fi
done
