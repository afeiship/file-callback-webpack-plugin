#!/usr/bin/env bash

sudo rm -rf /etc/httpd/conf.d;
sudo ln -s /vagrant/centos7.2/conf.d /etc/httpd/conf.d;
apache-restart;
