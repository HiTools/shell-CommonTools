#!/bin/bash
###########################################################################
# Copyright Statement:
# --------------------
# This software is protected by Copyright and the information contained
# herein is confidential. The software may not be copied and the information
# contained herein may not be used or disclosed except with the written
# permission of Magcomm Inc. (C) 2015
# -----------------
# Author : y.haiyang
# Version: V1.0
# Update : 2020-12-25
############################################################################

systemctl disable boot_startup.service

rm  /usr/lib/systemd/system/boot_startup.service
rm  /usr/bin/boot_startup.sh
rm  /usr/bin/boot_stop.sh

cp boot_startup.service /usr/lib/systemd/system/
cp boot_startup.sh /usr/bin/
cp boot_stop.sh /usr/bin/

chmod +x /usr/bin/boot_startup.sh
chmod +x /usr/bin/boot_stop.sh
# 启动服务
systemctl start boot_startup.service
# 开机启动
systemctl enable boot_startup.service