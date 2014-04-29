host="$1"
#echo "$host"
[ "$host" ] || { echo usage: `basename $0` "<host or ip>"; exit 1; }
if ping -w 2 -c 1 "$host" > /dev/null
then 
  echo status=$?
  echo Can ping "$host"
else
  echo status=$?
  echo Cannot ping "$host"
fi
