# timezone-script
Script for checking and altering Timezone in Linux

Here's a step-by-step explanation of the script:

Check if the script is being run with root (sudo) privileges to update the system time and timezone.
Display the current system time and timezone using the date and timedatectl commands.
Prompt the user if they want to update the system time and timezone.
If the user chooses to update, the script will prompt for the new timezone.
Set the new timezone using the timedatectl set-timezone command.
Display the updated system time and timezone.
Provide a success message.
Save this script to a file (e.g., update_time_and_timezone.sh), make it executable using the chmod +x update_time_and_timezone.sh command, and run it with sudo privileges to update your system's time and timezone.
