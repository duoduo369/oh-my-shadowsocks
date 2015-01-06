#!/usr/bin/env bash
sudo ssserver -c /opt/shadowsocks/conf.json -d stop
sudo ssserver -c /opt/shadowsocks/conf.json -d start
