#!/bin/bash
# Install Apache Web Server
yum update -y
yum install -y httpd

# Download and adjust the html file
wget https://raw.githubusercontent.com/atamankina/demos/main/elb_demo/elb_demo.html
sed -e "s/\${host}/$(hostname -f)/" \
	-e "s/\${AZ}/$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)/" \
	elb_demo.html > /var/www/html/index.html

# Turn on web server
chkconfig httpd on
service httpd start
