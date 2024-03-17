# let <arithmetic expression>

let a=5+4
echo $a # 9

let "a = 5 + 4"
echo $a # 9

let a++
echo $a # 10

let "a = 4 * 5"
echo $a # 20

let "a = $1 + 30"
echo $a # 30 + 30 = 60

let "a = 4 / 2"
echo $a # 2



# Basic arithmetic using expr
printf "\n"
echo "Basic arithmetic using expr"

expr 5 + 4 # 9
expr "5 + 4" # 5 + 4
expr 5+4 # 5+4
expr 11 % 2 # 1
expr 11 / 2 # 5
expr 11 \* 2 # 22

# Basic arithmetic using double parentheses
printf "\n"
echo "Basic arithmetic using double parentheses"

a=$((4 + 6))
echo $a # 10

b=$(($a + 20))
echo $b # 30

mul=$((a * b))
echo $mul # 300

div=$((mul / 3))
echo $div # 100

mod=$((mul % 9))
echo $mod # 3


# Conditional statements
# if statement
printf "\n"
echo "if statement"
a=10
b=20
if [ $a == $b ]
then
  echo "a is equal to b"
fi

if [ $a != $b ]
then
  echo "a is not equal to b"
fi

# if-else statement
printf "\n"
echo "if-else statement"
a=10
b=20
if [ $a == $b ]
then
  echo "a is equal to b"
else
  echo "a is not equal to b"
fi

# if-elif-else statement
printf "\n"
echo "if-elif-else statement"
a=10
b=20
if [ $a == $b ]
then
  echo "a is equal to b"
elif [ $a -gt $b ]
then
  echo "a is greater than b"
else
  echo "a is less than b"
fi

# case statement
printf "\n"
echo "case statement"
vehicle=$1
case $vehicle in
  "car" )
    echo "Rent of $vehicle is 100 dollar" ;;
  "van" )
    echo "Rent of $vehicle is 80 dollar" ;;
  "bicycle" )
    echo "Rent of $vehicle is 5 dollar" ;;
  "truck" )
    echo "Rent of $vehicle is 150 dollar" ;;
  * )
    echo "Unknown vehicle" ;;
esac

# compare two strings
printf "\n"
echo "compare two strings"
VAR="GNU/Linux is an operating system"
if [[ $VAR == *"Apple"* ]]; then
echo "It’s there."
else
echo "It’s not there."
fi
