#! /bin/sh
cd ~
wget https://dldir1.qq.com/weixin/Windows/WeChat_for_XP_SP3_To_Vista.exe
WINEPREFIX=~/.deepinwine/Deepin-WeChat deepin-wine WeChat_for_XP_SP3_To_Vista.exe
rm WeChat_for_XP_SP3_To_Vista.exe
wget https://558d35a266bf7034f9ae07b4a3c3e400.dlied1.cdntips.net/dlied1.qq.com/qqweb/PCQQ/PCQQ_EXE/PCQQ2021.exe?mkey=612b7f7a6eb6a1ae&f=962f&cip=110.182.135.91&proto=https&access_type=$header_ApolloNet
WINEPREFIX=~/.deepinwine/Deepin-QQ deepin-wine PCQQ2021.exe
cp ~/deepin-wine-qq-wechat-install/wqy-microhei.ttc ~/.deepinwine/Deepin-QQ/drive_c/windows/Fonts
cp ~/deepin-wine-qq-wechat-install/wqy-microhei.ttc ~/.deepinwine/Deepin-WeChat/drive_c/windows/Fonts
cd deepin-wine-qq-wechat-install
WINEPREFIX=~/.deepinwine/Deepin-WeChat deepin-wine regedit zh.reg tmp.reg
WINEPREFIX=~/.deepinwine/Deepin-QQ deepin-wine regedit zh.reg tmp.reg