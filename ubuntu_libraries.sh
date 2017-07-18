# First update and upgrade all necessary distributions. Refer - https://askubuntu.com/questions/733434/one-single-command-to-update-everything-in-ubuntu
echo Installing Distributions and Basic Libraries Updates Now....
apt-get update && apt-get upgrade && apt-get dist-upgrade

echo Installing JDK8 Now......
apt-get install openjdk-8-jdk
ls /usr/lib/jvm/ | grep 8-openjdk | { read java_home; export JAVA_HOME=$java_home; echo JAVA_HOME=$JAVA_HOME; }

echo Downloading and Installing Nylas Mail Now...
wget https://edgehill.nylas.com/download?platform=linux-deb
dpkg -i ./download?platform=linux-deb
apt-get install -f

# Installing Sublime Text 3. Refer - http://tipsonubuntu.com/2017/05/30/install-sublime-text-3-ubuntu-16-04-official-way/
echo Installing Sublime Text now...
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt-get install sublime-text

# Python essentials
apt-get install python-pip
apt-get install virtualenv

# More Ubuntu Software
apt-get install vim
# GIMP - refer to http://tipsonubuntu.com/2016/08/02/install-gimp-2-9-5-ubuntu-16-04/
add-apt-repository ppa:otto-kesselgulasch/gimp-edge
apt install gimp gimp-gmic
apt install ppa-purge && ppa-purge ppa:otto-kesselgulasch/gimp-edge
