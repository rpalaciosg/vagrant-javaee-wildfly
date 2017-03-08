#!/usr/bin/env bash

# Install oracle java 8 and maven.
sudo apt-get install -y python-software-properties debconf-utils
add-apt-repository -y ppa:webupd8team/java
apt-get -y update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
apt-get install -y oracle-java8-installer
apt-get install -y maven
