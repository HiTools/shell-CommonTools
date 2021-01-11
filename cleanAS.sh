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
# Update : 2021-01-07
# Des: 完全卸载 Mac 中的AndroidStudio
############################################################################

#!/bin/bash

# rm -Rf /Applications/Android\ Studio.app
rm -rf ~/Library/Preferences/AndroidStudio*
rm -rf ~/Library/Preferences/com.google.android.studio.plist
rm -rf ~/Library/Application\ Support/AndroidStudio*
rm -rf ~/Library/Application\ Support/Google/AndroidStudio*
rm -rf ~/Library/Logs/AndroidStudio*
rm -rf ~/Library/Logs/Google/AndroidStudio*
rm -rf ~/Library/Caches/AndroidStudio*
rm -rf ~/Library/Caches/Google/AndroidStudio*
rm -rf ~/Library/Preferences/com.android.*
rm -rf ~/Library/Preferences/com.google.android.*