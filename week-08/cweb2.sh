# Read in the arguments:
NEWSTRING=$1
OLDSTRING=$2

# the following gets rid of the first two arguments
shift
shift

# from now on, "all arguments" means "all arguments from 3rd one on"
# go through all arguments one by one:

for file in $*
do
 cat $file | sed -e "s|$OLDSTRING|$NEWSTRING|g" > tmpfile
 cp tmpfile $file
 ls -l $file 
 echo 
done
