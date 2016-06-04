# install script

# Github
git config credential.helper store
git config --global user.email "jose.flores.152@gmail.com"
git config --global user.name "Jose Flores"

# Google Chrome
### http://askubuntu.com/questions/79280/how-to-install-chrome-browser-properly-via-command-line
apt-get install libxss1 libappindicator1 libindicator7
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
dpkg -i google-chrome*.deb

# Visual Code
### https://code.visualstudio.com/Docs/editor/setup
wget "http://go.microsoft.com/fwlink/?LinkID=760868"
dpkg -i vscode-amd64.deb

### User Settings
rm -rf ~/.config/Code/User
git clone https://github.com/josefflores/settings.visualcode.git ~/.config/Code/User

