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
#sudo apt-get -y install oracle-java8-installer
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | su
do /usr/bin/debconf-set-selections
sudo apt-get -y install oracle-java8-installer

sudo apt-get -y update
sudo apt-get -y install python-pip
sudo pip install -q streamparse

sudo sed -i '8s/^$/export LEIN_ROOT="True"/' /usr/bin/lein
streamparse quickstart WordCountExample
~                                         
