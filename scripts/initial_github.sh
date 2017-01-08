#!/usr/bin/env bash

eval `ssh-agent -s`;
ssh-add ~/.ssh/id_rsa.github.com;
ssh -T git@git.oschina.net;


## resources:
#  https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
