# 自启动服务脚本

Centos 创建 systemctl 开机启动脚本

## 0x01 创建安装脚本 install.sh

```bash
#!/bin/bash
# 如果服务存在先停止服务
systemctl disable boot_startup.service

# 删除已经存在的脚本和服务
rm  /usr/lib/systemd/system/boot_startup.service
rm  /usr/bin/boot_startup.sh
rm  /usr/bin/boot_stop.sh

# 把服务和需要运行的脚本Copy到目标哦位置
cp boot_startup.service /usr/lib/systemd/system/
cp boot_startup.sh /usr/bin/
cp boot_stop.sh /usr/bin/

# 给脚本赋予运行权限
chmod +x /usr/bin/boot_startup.sh
chmod +x /usr/bin/boot_stop.sh
# 启动服务
systemctl start boot_startup.service
# 开机启动
systemctl enable boot_startup.service
```

## 0x02 创建开机启动服务 boot_startup.service

```bash
[Unit]
Description=startup
After=network.target

[Service]
Type=forking
ExecStart=/usr/bin/boot_startup.sh
ExecReload=/usr/bin/boot_startup.sh
ExecStop=/usr/bin/boot_stop.sh
PrivateTmp=true

[Install]
WantedBy=multi-user.target
```

## 0x03 创建服务需要运行的脚本 boot_startup.sh

```bash
#!/bin/bash
# TODO：这里填写需要自启动的脚本
echo "Hello BootStartUp"
```

## 0x04 创建服务关闭时需要运行的脚本

```bash
#!/bin/bash
# TODO：这里填写服务在关闭时候需要运行的脚本
# Tips：脚本内容可以为空
echo "Bye bye BootStartUp"
```

## 0x05 运行install.sh 脚本启动服务

将4个脚本放在同一个目录内，运行install.sh服务
