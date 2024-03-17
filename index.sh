
echo "Hello world!"

# print all odd numbers from 1 to 99
for i in {1..10..2}
do
  echo $i
done

# sum all even numbers from 2 to 100
sum=0
for ((i=2; i<=100; i+=2))
do
  sum=$(($sum+$i))
done

echo "Sum: " $sum

# input array of n element and print the array in reverse order
read -p "Enter the number of elements: " n
total=0
arr=()
for ((i=0; i<n; i++))
do
  read -p "Enter element $i: " arr[$i]
  total=$((total+arr[i]))
done

echo "Sum of the array is: $total"

# Find the largest number in the array
max=${arr[0]}
for ((i=1; i<n; i++))
do
  if((arr[i]>max))
  then
    max=${arr[i]}
  fi
done

echo "The largest number in the array is: $max"

# Reverse the array
for ((i=n-1; i>=0; i--))
do
  echo ${arr[i]}
done

# Sort the array
my_array=(3 1 4 1 5 9 2 6 5 3 5)
sorted_arr=($(for i in "${my_array[@]}"; do echo $i; done | sort -n))
sorted_arr2=($(printf "%s\n" "${my_array[@]}" | sort -rn))

echo ${sorted_arr[@]}
echo ${sorted_arr2[@]}
