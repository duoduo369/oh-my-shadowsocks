Usage
---

克隆项目到 `/opt/shadowsocks`

    sudo apt-get install python-pip
    pip install requirements.txt

修改`conf.json`里面的password

如果不用supervisor 那么直接使用`start.sh`和`stop.sh`

如果使用supervisor

    # root权限
    sudo su

    # 建立log文件夹
    mkdir -p /var/log/dshadowsocks/childlog/

    # cil命令
    /opt/shadowsocks/cil.sh start
    /opt/shadowsocks/cil.sh stop
    /opt/shadowsocks/cil.sh restart

    # 查看日志
    tail -f /var/log/dshadowsocks/stderr.log
    tail -f /var/log/dshadowsocks/stdout.log

shadowsocks
---
https://github.com/shadowsocks/shadowsocks

vps
---
选择一台国外的vps即可，要有root权限

[digitalocean](https://cloud.digitalocean.com/) 5$版本就够用

客户端
---
https://github.com/shadowsocks/shadowsocks/wiki/Ports-and-Clients

注意，代理模式选择pac模式不要选择全局模式

Chrome SwitchySharp
---
情景模式

手动配置选择socks代理 127.0.0.1 1080
socks 5
