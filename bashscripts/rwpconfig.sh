#!/bin/sh
#This script will configure apache2 to be a webproxy
echo "Configuring Apache2 to be a web proxy"

unlink /etc/apache2/sites-enabled/000-default.conf
unlink /etc/apache2/sites-available/000-default.conf

sudo cp /home/adminjonatan/itt-reversewebproxy/configfiles/jonatanelk.conf /etc/apache2/sites-available/jonatanelk.conf
sudo cp /home/adminjonatan/itt-reversewebproxy/configfiles/jonatannagios.conf /etc/apache2/sites-available/jonatannagios.conf
sudo cp /home/adminjonatan/itt-reversewebproxy/configfiles/jonatanlibrenms.conf /etc/apache2/sites-available/jonatanlibrenms.conf
sudo cp /home/adminjonatan/itt-reversewebproxy/configfiles/jonatanweb.conf /etc/apache2/sites-available/jonatanweb.conf
sudo cp /home/adminjonatan/itt-reversewebproxy/configfiles/port.conf /etc/apache2/port.conf

ln -s /etc/apache2/sites-available/jonatanelk.conf /etc/apache2/sites-enabled/jonatanelk.conf
ln -s /etc/apache2/sites-available/jonatannagios.conf /etc/apache2/sites-enabled/jonatannagios.conf
ln -s /etc/apache2/sites-available/jonatanlibrenms.conf /etc/apache2/sites-enabled/jonatanlibrenms.conf
ln -s /etc/apache2/sites-available/jonatanweb.conf /etc/apache2/sites-enabled/jonatanweb.conf


sudo apachectl configtest
sudo service apache2 restart
