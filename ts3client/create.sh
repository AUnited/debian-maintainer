#!/usr/bin/env bash
VERSION="3.5.2"
wget https://files.teamspeak-services.com/releases/client/$VERSION/TeamSpeak3-Client-linux_amd64-$VERSION.run
./TeamSpeak3-Client-linux_amd64-$VERSION.run
mv TeamSpeak3-Client-linux_amd64-$VERSION opt/ts3client
rm -f /opt/ts3client/ts3client_runscript.sh