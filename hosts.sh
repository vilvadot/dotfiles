#!/usr/bin/env bash

#Get latest blacklist of domains from https://github.com/StevenBlack/hosts
curl http://sbc.io/hosts/alternates/fakenews-porn/hosts --output /etc/hosts;
dscacheutil -flushcache;sudo killall -HUP mDNSResponder;