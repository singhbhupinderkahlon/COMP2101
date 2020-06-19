#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
# take 3 numbers from the user
read -p "Input 1 ? " firstnum

read -p "Input 2 ? " secondnum

read -p "Input 3 ? " thirdnum
# sum is stored in a variable named sum
sum=$((firstnum + secondnum + thirdnum))

# product is stored in a variable named product
product=$((firstnum * secondnum * thirdnum))


cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum multiplied by $secondnum and $thirdnum is $product

EOF
