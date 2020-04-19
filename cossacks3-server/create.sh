#!/bin/sh
git clone https://github.com/StarsAlliance/cossacks3-lan-server.git
cd cossacks3-lan-server || exit
git submodule update --init --recursive
g++ src/*.cpp -DNDEBUG -I asio/asio/include -lpthread -o cossacks3-server
strip --strip-unneeded --remove-section=.comment --remove-section=.note cossacks3-lan-server
cd ..
mkdir -p "usr/sbin"
mv cossacks3-lan-server/cossacks3-server usr/sbin/cossacks3-server
chmod a+x usr/sbin/cossacks3-server
