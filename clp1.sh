# 1. UUsing function: Write a Shell program to check from range 1 to 500 is Armstrong number or not and total number of armstrong in this range.

armstrong()
{
    echo "Enter the range"
    read n
    echo "Armstrong numbers in the range 1 to $n are:"
    for ((i=1; i<=n; i++))
    do
        num=$i
        sum=0
        len=${#num}
        while ((num > 0))
        do
            rem=$((num % 10))
            num=$((num / 10))
            j=0;
            x=1;
            while((j < len))
            do
                x=$((x*rem))
                j=$((j+1))
            done
            sum=$((sum + x))
        done
        if ((i == sum))
        then
            echo $i
        fi
    done
}

armstrong

# 2. Using sorting: Write a Shell program to find the 2nd highest and 3rd highest numbers from a set of numbers and sum of them using array.

Fun()
{
    echo "Enter the number of elements"
    read n
    echo "Enter the elements"
    for ((i=0; i<n; i++))
    do
        read arr[$i]
    done
    sort_arr=($(printf "%s\n" ${arr[@]} | sort -n))

    echo arr[@];
    echo "Second highest number is ${sort_arr[n-2]}"
    echo "Third highest number is ${sort_arr[n-3]}"
    sum=$((sort_arr[n-2] + sort_arr[n-3]))
    echo "sum of second and third hightest number is $sum";
}

Fun
