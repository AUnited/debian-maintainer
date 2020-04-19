#!/bin/sh
VERSION="251"
OLDPACKAGE="191"
tar xvfz jre-8u$VERSION-linux-x64.tar.gz
mv jre-1.8.0_$VERSION usr/lib/jre-1.8.0_$VERSION
rm rf usr/lib/jre-1.8.0_$OLDPACKAGE
sed sed -i 's/.*jre-1.8.0_$OLDPACKAGE.*/jre-1.8.0_$VERSION/' DEBIAN/postinst
sed sed -i 's/.*jre-1.8.0_$OLDPACKAGE.*/jre-1.8.0_$VERSION/' DEBIAN/prerm
