#!/bin/bash

echo "Installing PHPMyAdmin"

mkdir public
cd public
git clone --depth 1 https://github.com/phpmyadmin/phpmyadmin.git
cd phpmyadmin
composer update --no-dev
yarn install
cp config.sample.inc.php config.inc.php
# Remember to set AllowNoPassword (line 32 in config.inc.php) to false

echo "Done"
source ~/.bashrc
