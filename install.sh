#!/bin/bash -eu

# Install script meant to be run after calling make to build source. Varies
# from "make install" in that it writes to /usr/local instead of /lib and /usr.
# This plays nicer with most modern package management systems.

scriptDir=$(dirname $(readlink -f $0))

installDir=/usr/local/
binDir=$installDir/bin/
libDir=$installDir/lib/
manDir=$installDir/man/
etcDir=/etc/

mkdir -p $binDir $libDir $manDir

cp -d libtsocks.so* $libDir/
cp tsocks $binDir/

mkdir -p $manDir/man1
mkdir -p $manDir/man8
mkdir -p $manDir/man5

cp tsocks.1 $manDir/man1/
cp tsocks.8 $manDir/man8/
cp tsocks.conf.5 $manDir/man5/
