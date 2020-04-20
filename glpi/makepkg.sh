#!/usr/bin/env bash
# Used for making a debian package as is
read -r "Do you want to install package-making tools? [y/N]:" dti
if [[ $dti = "y|Y" ]]
then
apt install dpkg debconf debhelper lintian
fi
# Tuning up version and destination
pkgname="glpi"
version="9.4.5"
arch="all"
spath=$(pwd)
# Here we are downloading and untaring archive
mkdir /tmp/"${pkgname}"
cd /tmp/"${pkgname}" || exit
mkdir source
mkdir package
cd source || exit
wget -i https://github.com/glpi-project/glpi/releases/download/"${version}"/glpi-"${version}".tgz
tar xvfz glpi-"${version}".tgz && rm rf glpi-"${version}".tgz
cp "${spath}" /tmp/"${pkgname}"/package
# Fixing source to the package structure
cp . ../package/usr/share/glpi
cd ../package || exit
mkdir
mv $pkgname.deb "${pkgname}"-"${version}"-"${arch}".deb