#!/bin/bash
echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/fqdn.conf
sudo a2enconf fqdn
service apache2 restart
service apache2 restart
/etc/init.d/postgresql start
sleep 120
service mysql start
mongod --fork --logpath /var/log/mongodb.log
python manage.py runserver 0.0.0.0:4545
