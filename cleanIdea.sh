###########################################################################
# Copyright Statement:
# --------------------
# This software is protected by Copyright and the information contained
# herein is confidential. The software may not be copied and the information
# contained herein may not be used or disclosed except with the written
# permission of yuhaiyang Inc. (C) 2015
# -----------------
# Author : y.haiyang
# Version: V1.0
# Update : 2021-01-11
# Des: 完全卸载 Mac 中的IDEA脚本
############################################################################
#!/bin/bash

# rm -Rf /Applications/Android\ Studio.app
rm -rf ~/Library/Preferences/jetbrains.idea.*
rm -rf ~/Library/Preferences/com.google.android.studio.plist
rm -rf ~/Library/Application\ Support/IntelliJIdea*
rm -rf ~/Library/Application\ Support/JetBrains/IntelliJIdea*
rm -rf ~/Library/Logs/IntelliJIdea*
rm -rf ~~/Library/Logs/JetBrains/IntelliJIdea*
rm -rf ~/Library/Caches/IntelliJIdea*
rm -rf ~/Library/Caches/JetBrains/IntelliJIdea*
