#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.2.1/192.168.50.5/g' package/base-files/files/bin/config_generate
# NTP
echo "Settinng NTP Server"
sed -i "s/0.openwrt.pool.ntp.org/ntp1.aliyun.com/g" ./package/base-files/files/bin/config_generate
sed -i "s/1.openwrt.pool.ntp.org/ntp2.aliyun.com/g" ./package/base-files/files/bin/config_generate
sed -i "s/2.openwrt.pool.ntp.org/ntp3.aliyun.com/g" ./package/base-files/files/bin/config_generate
sed -i "s/3.openwrt.pool.ntp.org/ntp4.aliyun.com/g" ./package/base-files/files/bin/config_generate
# Timezone
echo "Settinng Timezone"
sed -i "s/UTC/CST-8/g" ./package/base-files/files/bin/config_generate
sed -i "/CST-8/a set system.@system[-1].zonename='Asia/Shanghai'" ./package/base-files/files/bin/config_generate 
# set root password(default: password)
echo "Set root password(default: password)"
sed -i 's|root.*|root:password' ./package/base-files/files/etc/shadow
#LUCI
git clone https://github.com/Ameykyl/luci-app-koolproxyR package/luci-app-koolproxyR
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
git clone https://github.com/rosywrt/luci-theme-rosy package/luci-theme-rosy
git clone https://github.com/rosywrt/luci-theme-purple package/luci-theme-purple
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
git clone https://github.com/vernesong/OpenClash package/OpenClash
git clone https://github.com/tindy2013/openwrt-subconverter package/openwrt-subconverter
