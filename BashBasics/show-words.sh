# capture the output of a command in a list
match=test
matchwords=( $(grep "$match" /usr/share/dict/words) )

numwords=${#matchwords[@]}  # number of elements in list
width=${#numwords}          # length of the $numwords string

num=1
for word in "${matchwords[@]}"; do 
  printf "%${width}d: %s\n" "$num" "$word"
  ((++num))
done
