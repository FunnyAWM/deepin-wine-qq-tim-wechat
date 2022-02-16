#! /bin/sh
cd ~
wget https://dldir1.qq.com/weixin/Windows/WeChat_for_XP_SP3_To_Vista.exe
WINEPREFIX=~/.deepinwine/Deepin-WeChat deepin-wine WeChat_for_XP_SP3_To_Vista.exe
rm WeChat_for_XP_SP3_To_Vista.exe
wget https://dldir1.qq.com/qqfile/qq/TIM3.3.9/TIM3.3.9.22051.exe -O PCQQ2021.exe
WINEPREFIX=~/.deepinwine/Deepin-TIM deepin-wine PCQQ2021.exe
rm PCQQ2021.exe
cp ~/deepin-wine-qq-wechat-install/wqy-microhei.ttc ~/.deepinwine/Deepin-QQ/drive_c/windows/Fonts
cp ~/deepin-wine-qq-wechat-install/wqy-microhei.ttc ~/.deepinwine/Deepin-WeChat/drive_c/windows/Fonts
cd deepin-wine-qq-wechat-install
WINEPREFIX=~/.deepinwine/Deepin-WeChat deepin-wine regedit zh.reg tmp.reg
WINEPREFIX=~/.deepinwine/Deepin-TIM deepin-wine regedit zh.reg tmp.reg
