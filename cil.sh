#!/usr/bin/env bash

if [ "x$(whoami)" != "xroot" ]; then
    echo "Only root can run this script."
    exit 1
fi

case $1 in
    "start")
        if [ -e /run/dshadowsocks.pid ] ;then
            supervisorctl -c /opt/shadowsocks/supervisord.conf restart dshadowsocks
        else
            supervisord -c /opt/shadowsocks/supervisord.conf
        fi
        exit ${ret}
        ;;
    "stop")
        if [ -e /run/dshadowsocks.pid ] ;then
          supervisorctl -c /opt/shadowsocks/supervisord.conf stop dshadowsocks && supervisorctl -c /opt/shadowsocks/supervisord.conf shutdown
        fi
        ;;
    "restart")
        if [ -e /run/dshadowsocks.pid ] ;then
          supervisorctl -c /opt/shadowsocks/supervisord.conf restart dshadowsocks
        else
          $0 start
        fi
        ;;
    *)
        echo "usage: $(basename $0) {start|stop|restart}"
        exit 1
        ;;
esac
