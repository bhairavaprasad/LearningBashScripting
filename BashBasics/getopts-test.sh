# get first group of options
while getopts  "noqs" flag
do
  echo $flag $OPTIND $OPTARG
done
echo $flag $OPTIND

# shift arguments out and look for a non-option argument
shift $((OPTIND-1))
echo $1
shift

# start over after the non-option argument
OPTIND=1
while getopts  "d:" flag
do
  echo $flag $OPTIND $OPTARG
done
echo $flag $OPTIND
