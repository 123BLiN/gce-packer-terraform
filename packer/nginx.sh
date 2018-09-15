#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
wget http://www.dotdeb.org/dotdeb.gpg -O - | apt-key add -
apt-get update
apt-get -qy install nginx