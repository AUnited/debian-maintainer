#!/bin/sh
VERSION="3.12.1"
wget https://files.teamspeak-services.com/releases/server/$VERSION/teamspeak3-server_linux_amd64-$VERSION.tar.bz2
tar xvfj teamspeak3-server_linux_amd64-$VERSION.tar.bz2
mv teamspeak3-server_linux_amd64-$VERSION opt/ts3server
rm -f opt/ts3server/ts3server_minimal_runscript.sh
rm -f opt/ts3server/ts3server_startscript.sh
