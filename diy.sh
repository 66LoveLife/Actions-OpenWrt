#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/Ameykyl/luci-app-koolproxyR package/luci-app-koolproxyR
#git clone https://github.com/Ameykyl/luci-app-ssr-plus-jo package/luci-app-ssr-plus-jo
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
git clone https://github.com/rosywrt/luci-theme-rosy package/luci-theme-rosy
git clone https://github.com/rosywrt/luci-theme-purple package/luci-theme-purple
