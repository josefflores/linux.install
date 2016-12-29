# Raspberry Pi Setup Script

mkdir ~/Git

# Remove Packages
# hexchat, pidgin, thunderbird, transmission, you tube
sudo apt-get remove plank minecraft-pi* shotwell* firefox scratch libreoffice-* atril* sonic-pi* brasero* cheese* rhythmbox* vlc*
sudo apt-get clean
sudo apt-get autoremove

# Install Teamviewer
wget http://download.teamviewer.com/download/linux/version_11x/teamviewer-host_armhf.deb ~/Downloads/teamviewer-host_armhf.deb
dpkg -i ~/Downloads/teamviewer-host_armhf.deb
sudo apt-get install -f
rm -rf ~/Downloads/teamviewer-host_armhf.deb
  
# Install Chromium
# https://www.raspberrypi.org/forums/viewtopic.php?t=121195
wget -qO - http://bintray.com/user/downloadSubjectPublicKey?username=bintray | sudo apt-key add -
echo "deb http://dl.bintray.com/kusti8/chromium-rpi jessie main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install chromium-browser rpi-youtube -y

# Install nodejs
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# Git
sudo apt-get install git
