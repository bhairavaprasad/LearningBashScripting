x="a"
y="a b"

["$x" ] && echo "non-empty"
[ "$x"] && echo "non-empty"
[ $x ] && echo "non-empty"
[ $y ] && echo "non-empty"
