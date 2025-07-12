#!/bin/bash
echo
echo "this is user creation script with password creation by user automatically"
echo
#prompt for username & password
read -p "enter new user name: " username
read -p -s "create password for $username" : password
echo
#creating the user
useradd -m $username
#setting user password
echo "$username $password | sudo chpasswd"
echo "$username user is created and set his/her password"
echo
