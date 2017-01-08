#!/usr/bin/env bash

## basic tools:
sudo yum -y install net-tools
sudo yum -y install git vim nodejs autojump
sudo yum -y install perl-ExtUtils-MakeMaker .
sudo yum install perl-devel

## initial for ushell_modules:
sudo npm install -g bower --registry=https://registry.npm.taobao.org
cd ~/git-oschina/fei-aliyun-centos
bower install


## lamp:
sudo yum -y install httpd
# sudo yum install mariadb-server mariadb
# sudo yum install php php-mysql php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml
