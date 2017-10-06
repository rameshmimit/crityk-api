#!/bin/bash
sudo yum install -y httpd24 php70 mysql56-server php70-mysqlnd > /var/log/installapache.out 2>&1
sudo service httpd start
sudo chkconfig httpd on
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
