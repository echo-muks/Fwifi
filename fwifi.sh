#!/bin/bash

# Display warning message and ask for user consent
echo "**********************************************************"
echo "* Welcome to Fwifi Script!                               *"
echo "* Please use responsibly and have fun exploring.        *"
echo "* Remember: Karma is a  bitch *"
echo "**********************************************************"

# Ask for user's consent
read -p "Do you agree to use this program responsibly? (yes/no): " consent

# Check user's consent
if [ "$consent" != "yes" ]; then
    echo "Goodbye!"
    exit 1
fi

# Display ASCII art at the beginning of the script
echo "                                            "
echo "@@@@@@@@@@   @@@  @@@  @@@  @@@   @@@@@@   "
echo "@@@@@@@@@@@  @@@  @@@  @@@  @@@  @@@@@@@   "
echo "@@! @@! @@!  @@!  @@@  @@!  !@@  !@@       "
echo "!@! !@! !@!  !@!  @!@  !@!  @!!  !@!       "
echo "@!! !!@ @!@  @!@  !@!  @!@@!@!   !!@@!!    "
echo "!@!   ! !@!  !@!  !!!  !!@!!!     !!@!!!   "
echo "!!:     !!:  !!:  !!!  !!: :!!        !:!  "
echo ":!:     :!:  :!:  !:!  :!:  !:!      !:!   "
echo ":::     ::   ::::: ::   ::  :::  :::: ::   "
echo " :      :     : :  :    :   :::  :: : :    "
echo "                                            "

# Display script header with programmer's name, date, location, and local time
echo "#############################################"
echo "# Script by Echo Muks - All rights reserved #"
echo "# Date: $(date +%Y/%m/%d)                   #"
echo "# Location: $(curl -s ipinfo.io/country)     #"
echo "# Local Time: $(date +"%T %Z")               #"
echo "#############################################"

# Main loop
while true; do
    echo -e "\nOptions:"
    echo "1. Update system "
    echo "2. System and Kernel information "
    echo "3. Network options "
    echo "4. Exit"

    # Get user's choice
    read -p "Enter your choice (1, 2, 3, or 4): " choice

    case $choice in
        1)
            echo "Updating system..."
            sudo apt-get update
            ;;
        2)
            echo -e "\nSystem and Kernel Information:"
            echo "--------------------------------"
            # Display system information
            uname -a

            # Check if the kernel is 64-bit or not
            is_64_bit=$(getconf LONG_BIT)
            if [ "$is_64_bit" -eq 64 ]; then
                echo "Kernel: 64-bit"
            else
                echo "Kernel: 32-bit"
            fi
            ;;
        3)
            echo -e "\nNetwork Options:"
            echo "1. Scan network "
            echo "2. Show services "
            echo "3. Scan open ports "
            echo "4. Restart Internet service "
            echo "5. Scan Wi-Fi networks "
            echo "6. Connect to Wi-Fi network by entering MAC "
            echo "7. Test networks "
            echo "8. Back to main menu "

            # Get network choice
            read -p "Enter your network choice (1-8): " network_choice

            case $network_choice in
                # ... (the rest of the network options)
            esac
            ;;
        4)
            echo "Exiting the program. Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please enter 1, 2, 3, or 4."
            ;;
    esac
done
