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
# Update : 2021-01-07
# Des: 方便配置指定sshId
############################################################################

#!/bin/bash

ID_FILE=$1
if [ -z "$ID_FILE" ]; then
    echo "提示："
    echo " - 请输入ssh 公钥文件路径。 例如： ~/.ssh/id_rsa.pub"
    echo " - 如果文件不存在，请使用 ssh-keygen -t rsa -C \"xxx@email.com\""
    echo " - 如果想要生成指定名称请使用 ssh-keygen -t rsa -C \"xxx@email.com\" -f ~/.ssh/id_rsa_xxx"
    exit
fi

echo "正在配置的ID为：$ID_FILE"
git config core.sshCommand "ssh -i $ID_FILE -F /dev/null"