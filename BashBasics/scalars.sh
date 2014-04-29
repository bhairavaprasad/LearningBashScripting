#!/bin/bash
# file: scalars.sh

x='aa'        # no spaces allowed around the "=" operator
y="bb   BB"
z=`date`      # these are back-quotes (found in upper left of keyboard)
w=$(pwd)      # alternative to backquotes
u="${x}QQ$y"  # interpolated, the brackets "{ }" protect the value of $x
v='${x}QQ$y'  # not-interpolated

echo '$x =' "$x"
echo '$y =' $y          # compare $y unquoted
echo '$y =' "$y"        # versus "$y"
echo '$z =' "$z"
echo '$w =' "$w"
echo '$u =' "$u"
echo '$v =' "$v"
echo "-------------------------------"

echo   first     second     # barewords allowed
echo  "first     second"    # use quotes to preserve space
echo "-------------------------------"

# numerical strings can be treated numerically inside $(( .. ))
echo $((12+13-7))
n=7
n=$((n*2))
echo $n
echo "-------------------------------"

# echo always terminates with new-line, use "-n" to avoid that

echo -n Type a line to be read "=> "  # careful to quote "=>"
read x                                # read string from standard input
echo "You typed this =>" "|$x|"       # double-quotes preserve internal 
                                      # spacing, but string is trimmed
