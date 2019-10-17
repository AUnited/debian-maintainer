#!/usr/bin/env bash
# Used for making a debian package as is
Do you want to install package-making tools?
apt install dpkg debconf debhelper lintian
# Tuning up version and destination
pkgname="glpi"
version="9.4.4"
arch="all"
spath=$(pwd)
# Here we are downloading and untaring archive
mkdir /tmp/"${pkgname}"
cd /tmp/"${pkgname}"
mkdir source
mkdir package
cd source
wget -i https://github.com/glpi-project/glpi/releases/download/"${version}"/glpi-"${version}".tgz
tar xvfz glpi-"${version}".tgz && rm rf glpi-"${version}".tgz
cp "${spath}" /tmp/"${pkgname}"/package
# Fixing source to the package structure
cp . ../package/usr/share/glpi
cd ../package
mkdir
