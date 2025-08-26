#!/bin/bash
echo
echo "this is user creation script with password creation by user automatically"
echo
#prompt for username & password
read -p "enter new user name: " username
read -s -p "create password for $username: "  password
echo
#creating the user
useradd -m $username
#setting user password
echo "$username $password | sudo chpasswd"
echo "$username user is created and set his/her password"
echo


Create bulk users with group, directory and shell

#!/bin/bash
#Shebang: Tells the system to use the Bash shell to interpret the script
# Path to the CSV file
CSV_FILE="users.csv"

# Skip the header and read each line IFS = internal field seperate by comma 
#read -r: Reads the line without interpreting backslashes.
#username password group shell: Variables to hold each field from the CSV line

tail -n +2 "$CSV_FILE" | while IFS=',' read -r username password; do
  echo "Creating user: $username"

  # Create the user
  sudo useradd "$username"

  # Set the password
  echo "$username:$password" | sudo chpasswd

  echo "User $username created and password set."
done



    # Create user with group, shell, and home directory
    sudo useradd -m -d "$home" -s "$shell" -G "$group" "$username"
    echo "$username:$password" | sudo chpasswd

    echo "[$(date)] Created '$username' in group '$group' with shell '$shell'." | tee -a "$LOG_FILE"
done < "$INPUT_FILE"
