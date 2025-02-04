#!/bin/bash
sudo su -
yum update -y
yum install -y squid
systemctl enable squid
sed -i 's/http_access deny all/http_access allow all/' /etc/squid/squid.conf
systemctl start squid
