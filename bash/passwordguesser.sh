#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

passString="Password"

#password stored in passString variable

read -s -p "Guess the string:" myString

#userprint is stored in mystring.

echo

# if else is used to check user input with different conditions.

if [ $myString = $passString ]; then

echo "Login Successful."

echo

else

  echo "Try Diffrent pass."

  read -s -p "Guess the password:" myString

  if [ $myString = $passString ]; then

echo "Login Successful."

echo

else

  echo

  echo "Try Different pass."

  read -s -p "Guess the password:" myString

if [ $myString = $passString ]; then

  echo "Login Successful."

  echo

  else

    echo "Try Diffrent Pass."

    read -s -p "Guess the password:" myString

if [ $myString = $passString ]; then

echo "Login Successful."

echo

else

  echo "Try Diffrent Pass."

  read -s -p "Guess the password:" myString

  if [ $myString = $passString ]; then

    echo "Login Successful."

    echo

else

  echo

  echo "Try Again."

fi

fi

fi

fi

fi
