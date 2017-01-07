#!/usr/bin/env bash

# 输入密码登录后，到.ssh目录下，修改authorized_keys的权限为644，就可以不用输入密码登录了。
cd ~/.ssh
chmod 644 -R authorized_keys
