Usage
---

克隆项目到 `/opt/shadowsocks`

    git clone https://github.com/duoduo369/oh-my-shadowsocks.git /opt/shadowsocks
    sudo apt-get install python-pip
    pip install -r requirements.txt

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

[digitalocean](https://www.digitalocean.com/?refcode=2442f64b1152) 5$版本就够用(我无耻了，连接里有我的邀请码，用这个连接注册可以送10刀)

客户端
---

[shadowsocks 给出的连接](https://github.com/shadowsocks/shadowsocks/wiki/Ports-and-Clients)

因为一些大家都懂的原因，我把客户端放在了clients文件夹里面, 这几个客户端根据界面就可以比较清除的知道用法。

    windows --> clients/Shadowsocks-win-2.1.6.zip
    android影梭 --> clients/yingsuo_android.apk
    ios --> 请到app store搜索 shadowsocks下载

windows配置好了之后结合Chrome一起使用(用过goagent的人应该都知道SwitchySharp这个插件,现在这个插件升级叫做SwitchyOmega)

### Chrome SwitchySharp

情景模式

手动配置选择socks代理 127.0.0.1 1080
socks 5
