# "-r" means cannot be reset, so is a constant
declare -r CONSTANT="cannot be reset"

# "-i" means act like an integer and evaluate expressions accordingly
declare -i num_only

# -u/-l means convert value strings to upper/lower case
declare -u uppercaseval
declare -l lowercaseval

# -x means export variable (make available to subshells)
declare -x exportedval="some exported value"

CONSTANT="something else"  # this will fail with error message
echo $CONSTANT

num_only=5*4+3
echo $num_only

uppercaseval="some STRING"
lowercaseval="some STRING"

echo $uppercaseval
echo $lowercaseval

