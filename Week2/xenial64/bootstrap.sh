#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
apt-get install -y php libapache2-mod-php php-mcrypt
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi