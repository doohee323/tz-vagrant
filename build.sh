#!/usr/bin/env bash

set -x

if [ ! -d "tz-spring-boot" ]; then
	echo "run this on this folder!"
	echo "git clone https://github.com/doohee323/tz-spring-boot.git"
	exit -1
fi

if [ ! -d "tz-angular1.4" ]; then
	echo "run this on this folder!"
	echo "git clone https://github.com/doohee323/tz-angular1.4.git"
	exit -1
fi

vagrant destroy -f && vagrant up
vagrant ssh

exit 0
