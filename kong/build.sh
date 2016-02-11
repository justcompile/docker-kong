#!/bin/sh
set -ex

cd /tmp
apt-get update
apt-get install -y netcat lua5.1 openssl libpcre3 dnsmasq curl sudo gettext dnsutils
curl -L https://github.com/Mashape/kong/releases/download/0.6.1/kong-0.6.1.wheezy_all.deb > kong-0.6.1.wheezy_all.deb
dpkg -i kong-0.6.1.*.deb
rm /tmp/*
