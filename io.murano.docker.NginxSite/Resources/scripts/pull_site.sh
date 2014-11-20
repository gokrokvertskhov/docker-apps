#!/bin/bash
# $1 is a url of github repo
# $2 is a unique application id

sudo apt-get install git >> /dev/null

mkdir /var/tmp/$2 >> /dev/null
cd /var/tmp/$2
git clone $1 >> /dev/null
ls
exit 0