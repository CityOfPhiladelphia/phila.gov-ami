#!/bin/bash

_dir="$(dirname "$0")"

export DEBIAN_FRONTEND=noninteractive

# For php7
sudo add-apt-repository -y ppa:ondrej/php

# For nodejs 4.x
echo 'deb https://deb.nodesource.com/node_4.x trusty main' | sudo tee /etc/apt/sources.list.d/nodesource.list > /dev/null
curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -

sudo apt-get update
sudo -E apt-get install -y jq nodejs nginx php7.0-cli php7.0-curl php7.0-fpm php7.0-gd php7.0-mbstring php7.0-mysql php-xml

echo "Installing grunt"
sudo npm install -g grunt-cli

echo "Installing wp-cli"
curl -sS https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar | sudo tee /usr/local/bin/wp > /dev/null
sudo chmod 755 /usr/local/bin/wp


