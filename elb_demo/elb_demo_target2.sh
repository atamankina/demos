#!/bin/bash
# Install Apache Web Server and PHP
yum install -y httpd
# Download and adjust the html file
wget https://raw.githubusercontent.com/atamankina/demos/main/elb_demo/elb_demo_target2.html
sed -e "s/\${host}/$(hostname -f)/" \
	-e "s/\${AZ}/$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)/" \
	elb_demo_target2.html > /var/www/html/target2.html
# Turn on web server
chkconfig httpd on
service httpd start