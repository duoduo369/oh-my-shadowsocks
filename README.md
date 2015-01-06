Usage
---

克隆项目到 `/opt/shadowsocks`

    pip install requirements.txt

修改`conf.json`里面的password

如果不用supervisor 那么直接使用`start.sh`和`stop.sh`

如果使用supervisor

    sudo su

    makedir /var/log/dshadowsocks
    makedir /var/log/duoduo369/

    /opt/shadowsocks/cil.sh start
    /opt/shadowsocks/cil.sh stop
    /opt/shadowsocks/cil.sh restart

shadowsocks
---
https://github.com/shadowsocks/shadowsocks

客户端
---
https://github.com/shadowsocks/shadowsocks/wiki/Ports-and-Clients#windows

注意，代理模式选择pac模式不要选择全局模式

SwitchySharp
---
情景模式

手动配置选择socks代理 127.0.0.1 1080
socks 5
