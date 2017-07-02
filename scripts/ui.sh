#!/usr/bin/env bash

set -x

export PROJ_DIR=/vagrant

###############################################################
# install node, bower, grunt, compass
###############################################################
# for ubuntu 14.04
#sudo apt install nodejs-legacy -y
sudo apt install npm -y

sudo npm install -g bower -y
sudo npm install grunt --save-dev
sudo npm install grunt-contrib-jshint --save-dev
sudo apt-get install ruby-compass -y
sudo gem install compass

###############################################################
# sync static resources to target dir
###############################################################
sudo rm -Rf /var/www/html
sudo mkdir -p /var/www/html

cd $PROJ_DIR/tz-angular1.4

npm install
bower install
cp -Rf $PROJ_DIR/tz-angular1.4/bower_components $PROJ_DIR/tz-angular1.4/app/bower_components
#sudo chown -Rf ubuntu:ubuntu *

#curl http://192.168.82.170

sudo /bin/bash /vagrant/scripts/deploy.sh

exit 0
