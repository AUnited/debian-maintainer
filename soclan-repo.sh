#!/usr/bin/env bash
wget -O - http://repo.soclan.ru/soclankey.asc | sudo apt-key add -
echo 'deb http://repo.soclan.ru/ bullseye main contrib non-free' > /etc/apt/sources.list.d/soclan.list
