#! /bin/sh
echo "deb https://packages.deepin.com/deepin stable main contrib non-free" | sudo tee /etc/apt/sources.list.d/deepin.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 425956BB3E31DF51
sudo apt update
sudo apt install deepin.com.qq.im deepin.com.wechat -y
sudo rm /etc/apt/sources.list.d/deepin.list&&sudo apt update
