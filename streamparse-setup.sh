#!/bin/bash
echo "PROVISIONING STREAMPARSE VM"

#DOWNLOAD LEININGEN V 2.5.3 USING
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
#MAKE IT EXECUTABLE
chmod a+x lein
#MOVE IT TO /usr/bin!
sudo mv -v lein /usr/bin/lein

#DOWNLOAD JAVA8
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y update
#AUTO ACCEPT Oracle's EULA
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get -y install oracle-java8-installer

sudo apt-get -y update
sudo apt-get -y install python-pip
sudo pip install -q streamparse

#Make example for user
streamparse quickstart WordCountExample
~                                         
