#!/usr/bin/env bash

# delete old files:
rm -rf .vagrant.d/

# add your vagrant box:
vagrant box add fei-vagrant-centos7.2 /Users/feizheng/soft/vagrant-files/vagrant-centos-7.2.box;
vagrant init vagrant-centos7.2;
