#!/bin/bash
echo
echo "this is user creation script with password creation by user automatically"
echo
#prompt for username & password
read -p "enter new user name: " username
read -p -s "create password for $username: "  password
echo
#creating the user
useradd -m $username
#setting user password
echo "$username $password | sudo chpasswd"
echo "$username user is created and set his/her password"
echo


Create bulk users with group, directory and shell

#!/bin/bash

INPUT_FILE="users.csv"
LOG_FILE="/var/log/user_creation.log"
touch "$LOG_FILE"

# Read each field from CSV
while IFS=',' read -r username password group shell home; do
    [[ -z "$username" || -z "$password" ]] && continue

    if id "$username" &>/dev/null; then
        echo "[$(date)] User '$username' already exists. Skipping." | tee -a "$LOG_FILE"
        continue
    fi

    # Create user with group, shell, and home directory
    sudo useradd -m -d "$home" -s "$shell" -G "$group" "$username"
    echo "$username:$password" | sudo chpasswd

    echo "[$(date)] Created '$username' in group '$group' with shell '$shell'." | tee -a "$LOG_FILE"
done < "$INPUT_FILE"
