n=1

# set x, y, z, w, u to the squares of 2, 3, 4, 5, 6, resp.
for v in x y z w u; do
  ((++n))
  eval "$v=$(($n*$n))"     # eval "$v=$((n*n))" also works
done
echo $x $y $z $w $u
