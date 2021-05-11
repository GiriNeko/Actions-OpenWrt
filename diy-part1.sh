#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#


# R4A Flash Fix
wget https://raw.githubusercontent.com/GiriNeko/Actions-OpenWrt/XiaoMi_R4A_Gigabyte/mt7621.mk -O openwrt/target/linux/ramips/image/mt7621.mk
wget https://raw.githubusercontent.com/GiriNeko/Actions-OpenWrt/XiaoMi_R4A_Gigabyte/mt7621_xiaomi_mir3g-v2.dts -O openwrt/target/linux/ramips/image/mt7621.mk

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add some packages
git clone https://github.com/GiriNeko/rkp-ipid package/network/utils/rkp-ipid

