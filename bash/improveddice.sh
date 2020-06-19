#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
echo "Processing...."
# roll the dice and save the results
bias=1
range=6
# the dice is roolled by utilising the variables
dice1=$(( RANDOM % range + bias))
dice2=$(( RANDOM % range + bias ))
# command for total summary
sum=$(( dice1 + dice2 ))
# command for average of dice outputs
average=$(( sum / 2 ))
# display the results with sum and average
echo "Rolled $dice1, $dice2 and a sum $sum"
echo "Rolled two times $dice1, $dice2 and an average $average"
