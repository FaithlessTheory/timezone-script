#!/bin/bash

# Check if the user has sudo privileges
if [[ $EUID -ne 0 ]]; then
  echo "This script requires superuser privileges. Please run it with sudo."
  exit 1
fi

# Display the current system time and timezone
echo "Current System Time:"
date

echo "Current System Timezone:"
timedatectl | grep "Time zone"

# Prompt the user to update the system time and timezone
read -p "Do you want to update the system time and timezone? (y/n): " choice

if [[ $choice == "y" || $choice == "Y" ]]; then
  # Prompt for the new timezone
  read -p "Enter the new timezone (e.g., 'America/New_York'): " new_timezone

  # Set the new timezone
  timedatectl set-timezone "$new_timezone"

  # Display the updated system time and timezone
  echo "Updated System Time:"
  date

  echo "Updated System Timezone:"
  timedatectl | grep "Time zone"

  echo "Time and timezone updated successfully."
else
  echo "No changes were made."
fi
