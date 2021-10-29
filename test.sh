#first create a <file>.sh file and do
# chmod +x <file>.sh

#to run file
# ./<file>.sh

#create new file
#touch aaa.txt

#Print Home dir Path
echo $HOME
#Output:/Users/sujain

#Variables
NAME="SUMIT"
echo "FIRST Name is "$NAME

#User Input
#read -p "Enter you last name: " LASTNAME
#echo "Full Name is " $NAME $LASTNAME

#CONDITION
if [ $NAME == "SUMIT" ]
then
  echo "FIRST Name is SUMIT"
else
  echo "FIRST Name is not SUMIT"
fi

#combine conditions
# For the single-bracket syntax that we’ve been using so far, you can use “-a” for and and “-o” for or
FOO=5
if [ $FOO -ge 3 -a $FOO -lt 10 ]
 then
   echo "foo is " FOO
fi

#check empty string
if [ -z "$emptystring" ];
  then
    echo "empty string or uninitialized"
else
  echo "string is not empty: " $emptystring
fi

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

NUM1=31
 NUM2=5
 if [ "$NUM1" -gt "$NUM2" ]
 then
   echo "$NUM1 is greater than $NUM2"
 else
   echo "$NUM1 is less than $NUM2"
 fi


########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable

FILE="one.txt"
if [ -f "$FILE" ]
  then
    echo "$FILE is a file"
  else
    echo "$FILE is not a file"
fi

if [ -d "$FILE" ]
  then
    echo "$FILE is a Folder"
  else
    echo "$FILE is not a Folder"
fi

DIR="two"
if [ -d "$DIR" ]
  then
    echo "$DIR is a Folder"
  else
    echo "$DIR is not a Folder"
fi

#######################

#CASE STATEMENT
 read -p "Are you 21 or over? Y/N " ANSWER
 case "$ANSWER" in
   [yY] | [yY][eE][sS])
     echo "You can have a beer :)"
     ;;
   [nN] | [nN][oO])
     echo "Sorry, no drinking"
     ;;
   *)
     echo "Please enter y/yes or n/no"
     ;;
 esac

#SIMPLE FOR LOOP
NAMES="AAA BBB CCC DDD"
for n in $NAMES
  do
    echo $n
done


#list all the files in dir
echo $(ls *.txt)
echo $(ls new-*.txt)

#FOR LOOP TO RENAME FILES
FILES=$(ls new-*.txt)
NEW="new"
for f in $FILES
  do
    echo "Renaming $f to new-$f"
    mv $f $NEW-$f
done

#READ A FILE
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done <"./one.txt"

#FUNCTION
function hello(){
  echo "hello world"
}

hello

#FUNCTION WITH PARAMS
function sayHello(){
  echo "Hello I am $1 and I am $2"
}

sayHello "sumit" "30"

# Create folder and write to a file
mkdir hello
touch "hello/world.txt"
echo "hello world" >> "hello/world.txt"

