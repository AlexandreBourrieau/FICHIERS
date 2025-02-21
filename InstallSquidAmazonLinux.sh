#!/bin/bash
sudo su -
yum update -y
yum install -y squid
yum install -y httpd-tools
htpasswd -b -c /etc/squid/passwords proxyuser proxypass
systemctl enable squid
sed -i '4,1s/^/auth_param basic program \/usr\/lib64\/squid\/basic_ncsa_auth \/etc\/squid\/passwords\nauth_param basic realm proxy\nacl authenticated proxy_auth REQUIRED\ \n \n/' /etc/squid/squid.conf
sed -i 's/http_access deny all/http_access allow authenticated\nhttp_access deny all/' /etc/squid/squid.conf
systemctl start squid
