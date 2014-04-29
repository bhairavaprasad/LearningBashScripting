#!/bin/bash

declare -A target

target[zipit.sh]=/usr/local/bin/zipit
target[myroot.sh]=$HOME/bin/myroot

#-----------------------------------------------

# ensure that you're in this directory
cd "$(dirname $0)"

for src in "${!target[@]}"; do
  if [ ! -f "$src" ]; then
    printf "\n**** NO SUCH FILE: %s ****\n" "$src"
    continue
  fi
  dst="${target[$src]}"
  dstdir="$dst"
  if [ ! -d "$dst" ]; then
    dstdir=$(dirname "$dstdir")
  fi
  if [ ! -d "$dstdir" ]; then
    printf "\n**** NO SUCH DIRECTORY: %s ****\n" "$dstdir"
    continue
  fi	
  owner="$(stat -c %U "$dstdir")"
  command="sudo -u \"$owner\" rsync -uptv \"$src\" \"$dst\""
  printf "\n--> "
  echo -e "\033[01;31m$command\033[0m"
  eval "$command"
done
