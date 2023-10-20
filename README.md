# Timezone and System Time Change Script
Script for checking and altering Timezone in Linux. This is used to provide a setp by step prompt to change your timezone in your server.

What does the script do?
Here is a step by step of the script:

1. Check if the script is being run with root (sudo) privileges to update the system time and timezone.
2. Display the current system time and timezone using the date and timedatectl commands.
3. Prompt the user if they want to update the system time and timezone.
4. If the user chooses to update, the script will prompt for the new timezone.
5. Set the new timezone using the timedatectl set-timezone command.
6. Display the updated system time and timezone.
7. Provide a success message.


## How To & Download
- Download the file or save this script to a file (e.g., update_time_and_timezone.sh), make it executable:
- `chmod +x update_time_and_timezone.sh`
- Run it with sudo privileges to update your system's time and timezone.
