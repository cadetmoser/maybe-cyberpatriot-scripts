read -t 20 -p "\033[31m------------------------ \033[1mWARNING!${RESET}\033[31m ------------------------${RESET}\n\nRunning this script before doing forensics questions CAN and WILL cause you to \033[4mlose evidence!${RESET}\n\nThe following applications will be INSTALLED by default - make sure there are no conflicts in the README!\n - Uncomplicated Firewall (UFW)\n\nThe following applications will be REMOVED by default - make sure there are no conflicts in the README!\n - Wireshark \n - Ophcrack \n - Transmission\n\nAre you \033[1mabsolutely sure${RESET} you want to continue? (y/n) (continues in 20 seconds) " will_to_live
if [ ${will_to_live} == "n" ]; then
	exit 130
else


# Update apps - use alternate command if something breaks
sudo apt update -y
sudo apt full-upgrade -y
#sudo apt upgrade -y

# Install apps - VERIFY IF PROHIBITED!

# Uncomplicated Firewall (UFW)
sudo apt install ufw -y
sudo apt install gufw -y

# Enable UFW firewall protection
sudo ufw enable

# Remove apps - VERIFY IF REQUIRED!

# Wireshark
sudo apt purge wireshark -y
# Ophcrack
sudo apt purge wireshark -y
# Transmission
sudo apt purge transmission -y

# Remove all unneccesary dependencies
sudo apt autoremove -y

echo "Looks like my work is done here. Farewell... till meet again."

fi