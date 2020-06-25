#!/bin/bash
#
# this script displays some host identification information for a simple Linux machine
#
# Sample output:
#   Hostname        : hostname
#   LAN Address     : 192.168.2.2
#   LAN Hostname    : host-name-from-hosts-file
#   External IP     : 1.2.3.4
#   External Name   : some.name.from.our.isp

# Task 1: Clean up this script by moving the commands that generate the output to separate lines
#         that put each command's output into variables. Once you have that done, Use those variables
#         in the output section at the end of the script. If the commands included in this script
#         don't make sense to you, feel free to create your own commands to find your ip addresses,
#         host names, etc.
#
# For example
#   In the part of the script that prints the report, the commands to generate the data are mixed in with the literal text output
#   To separate it and make it easier to read, we should take those commands and put them before the output generation, in their own section that generates the data and saves it in variables
#   Then we can just use those variables in our output section and it will be easier to read, understand, extend and debug
#
#   So a line in the output that looks like
#
#       echo "label: $(cmd1 $(cmd2)|cmd3)"
#
#   could be rewitten like this
#
#       # Data Collection/Generation Section
#       dataforcmd1=$(cmd2)
#       outputofcmd1=$(cmd1 $dataforcmd1|cmd3)
#
#       # Output Formatting/Delivery Section
#       echo "label: $outputofcmd1"
#
#   Your variable names should be sensible names that describe what is in them
#   Taking complex commands and splitting them into separate simpler pieces makes them easier to read, understand, debug, and extend or modify

# Task 2: Add variables for the default router's name and IP address.
#         Add a name for the router's IP address to your /etc/hosts file.
#         The router's name and address must be obtained by dynamically
#         finding the router IP address from the route table, and looking
#         up the router's hostname using its IP address, not by just
#         printing out literal text.
# sample of desired output:
#   Router Address  : 192.168.2.1
#   Router Hostname : router-name-from-hosts-file

# we use the hostname command to get our system name
# the LAN name is looked up using the LAN address in case it is different from the system name
# finding external information relies on curl being installed and relies on live internet connection
# awk is used to extract only the data we want displayed from the commands which produce extra data
# to find out what the ugly commands here are doing, try running them in smaller, simpler pieces
# e.g. These are 2 of the ugly lines
#

myhostname=$(hostname)
interface_name=$(ip a |awk '/: e/{gsub(/:/,"");print $2}')

# name of the interface generated

lan_address=$(ip a s $interface_name|awk '/inet /{gsub(/\/.*/,"");print $2}')

#name of interface is finded

lan_hostname=$(getent hosts $(ip a s $interface_name)|awk '/inet /{gsub(/\/.*/,"");print $2}' | awk '{print $2}')

#we find the lan hostname $lan_address

external_ip=$(curl -s icanhazip.com)

#external IP address is generated with curl



external_name=$(getent hosts $external_ip| awk '{print $2}')

#We get the external ip address if we look at host files by $external_ip

router_address=$(ip r s default| cut -d ' ' -f 3)

#default router address is generated

router_hostname=$(getent hosts $router_address|awk '{print $2}')

#router hostname is found


#Script output is moved to different outputs to make it bug free and clean

cat <<EOF

Hostname        : $myhostname

LAN Address     : $lan_address

LAN Hostname    : $lan_hostname

External IP     : $external_ip

External Name   : $external_name

Router Address  : $router_address

Router Hostname : $router_hostname

EOF
