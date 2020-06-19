#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
# my name is of 9 words so dice will be rolled 9 times
echo "
Rolling...
$(( RANDOM % 6 + 9)) rolled
"
