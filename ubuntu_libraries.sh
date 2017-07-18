# First update and upgrade all necessary distributions. Refer - https://askubuntu.com/questions/733434/one-single-command-to-update-everything-in-ubuntu
echo Installing Distributions and Basic Libraries Updates Now....
apt-get update && apt-get upgrade && apt-get dist-upgrade

echo Installing JDK8 Now......
apt-get install -y openjdk-8-jdk
ls /usr/lib/jvm/ | grep 8-openjdk | { read java_home; export JAVA_HOME=$java_home; echo JAVA_HOME=$JAVA_HOME; }

echo Downloading and Installing Nylas Mail Now...
wget https://edgehill.nylas.com/download?platform=linux-deb
dpkg -i ./download?platform=linux-deb
apt-get install -yf

# Installing Sublime Text 3. Refer - http://tipsonubuntu.com/2017/05/30/install-sublime-text-3-ubuntu-16-04-official-way/
echo Installing Sublime Text now...
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt-get install -y sublime-text

# Python essentials
apt-get install -y python-pip
apt-get install -y virtualenv

# More Ubuntu Software
apt-get install -y vim
# GIMP - refer to http://tipsonubuntu.com/2016/08/02/install-gimp-2-9-5-ubuntu-16-04/
add-apt-repository ppa:otto-kesselgulasch/gimp-edge
apt-get update
apt install -y gimp gimp-gmic
apt install -y ppa-purge && ppa-purge ppa:otto-kesselgulasch/gimp-edge
# Google Chrome - refer to https://askubuntu.com/questions/510056/how-to-install-google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get install -y google-chrome-stable
# Calendar indicator
add-apt-repository ppa:atareao/atareao
apt-get update
apt install -y calendar-indicator
# Go-gfor-it Refer - https://itsfoss.com/go-for-it-to-do-app-in-linux/
add-apt-repository ppa:mank319/go-for-it
apt-get update
apt-get install -y go-for-it
# F.lux
add-apt-repository ppa:nathan-renniewaldock/flux
apt-get update
apt-get install -y fluxgui
# Okular and VLC
apt-get install -y okular
apt-get install -y vlc
