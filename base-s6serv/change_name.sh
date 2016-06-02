#!/usr/bin/sh

name=$1
if [ -z $1 ]; then
	echo " usage : $0 service_name"
	exit 1
fi

find -type f -name 'base.*' | rename base $1 *

for i in PKGBUILD *.install; do
	sed -i "s:base:$name:g" $i
done
rm change_name.sh
