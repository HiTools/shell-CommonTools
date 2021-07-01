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
# Update : 2021-01-18
# Des: Git 备份
############################################################################
#!/bin/bash
SRC_GIT=$1
TAR_GIT=$2
TAR_PATH=$3

if [ -z "$TAR_PATH" ]; then
    echo " - 请输入要保存代码的路径"
    exit
fi

if [ -d $TAR_PATH ] ; then
    rm -rf $TAR_PATH
fi

mkdir -p $TAR_PATH

git clone  $SRC_GIT  $TAR_PATH
cd  $TAR_PATH
git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
git fetch --all
git pull --all

git remote set-url origin $TAR_GIT
git push --mirror

rm -rf $TAR_PATH