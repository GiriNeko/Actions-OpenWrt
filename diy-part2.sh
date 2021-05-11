#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# R4A Flash Fix
rm -rf openwrt/target/linux/ramips/image/mt7621.mk
wget https://raw.githubusercontent.com/GiriNeko/Actions-OpenWrt/XiaoMi_R4A_Gigabyte/mt7621.mk -O openwrt/target/linux/ramips/image/mt7621.mk
rm -rf openwrt/target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts
wget https://raw.githubusercontent.com/GiriNeko/Actions-OpenWrt/XiaoMi_R4A_Gigabyte/mt7621_xiaomi_mir3g-v2.dts -O openwrt/target/linux/ramips/image/mt7621.mk
