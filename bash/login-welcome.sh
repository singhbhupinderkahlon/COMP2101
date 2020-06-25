#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
#username  stored in uvar variable

uvar="$USER"

#hostname stored in hostname variable

hostname="$(hostname)"

#current day is stored in day variable

day=$(date +%A)

#current time is stored in current time variable

currenttime=$(date +%I:%M\ %p)



###############
# Main        #
###############

# if else command is used to to displays different days names

if [ "$day" = Monday ];

then

cat="Welcome to planet $hostname, pleasant $uvar!"

elif [ "$day" = Tuesday ];

then

cat="Welcome to planet $hostname, sanguine $uvar!"

elif [ "$day" = Wednesday ];

then

cat="Welcome to planet $hostname, sunny $uvar!"

elif [ "$day" = Thursday ];

then

cat="Welcome to planet $hostname, hilarious $uvar!"

elif [ "$day" = Friday ];

then

cat="Welcome to planet $hostname, good-natured $uvar!"

elif [ "$day" = Saturday ];

then

cat="Welcome to planet $hostname, lighthearted $uvar!"

else cat="Welcome to planet $hostname, optimistic $uvar!"

fi

catsay "$cat It is $currenttime on $day ."
