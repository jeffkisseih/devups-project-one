#!/bin/bash

# Predefined correct credentials
correct_username="admin"
correct_password="pass123"

# Prompt user for username
read -p "Enter your username: " user

# Prompt user for password (hidden input)
read -s  -p "Enter your password: " password
echo  # move to new line after password input

# Validation logic
if [[ "$user" == "$correct_username" && "$password" == "$correct_password" ]]; then
    echo "Login successful! Welcome, admin."
elif [[ "$user" == "$correct_username" && "$password" != "$correct_password" ]]; then
    echo "Incorrect password. Try again."
else
    echo "Invalid username. Access denied."
fi
