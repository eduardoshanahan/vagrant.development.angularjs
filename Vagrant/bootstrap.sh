#!/usr/bin/env bash

apt-get update
apt-get install python-software-properties -y
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

apt-get install -y build-essential
add-apt-repository -y ppa:git-core/ppa
apt-get update
apt-get install -y git
git config --global url."https://".insteadOf git://

curl -sL https://deb.nodesource.com/setup_4.x | bash -
apt-get update
apt-get install -y nodejs

mkdir -p ~/.npm
chmod -R a+rw ~/.npm

npm install -g grunt-cli
npm install -g bower
npm install -g bunyan
npm install -g yo
npm install -g generator-angular

apt-get install libfontconfig -y

apt-get autoclean -y
apt-get autoremove -y
