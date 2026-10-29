#!/bin/sh

# 下载源码
git clone --single-branch -b openwrt-21.02 https://github.com/immortalwrt/immortalwrt.git
mv ./immortalwrt/* ./

# 下载插件
SUPPLY_DIR=supply-packages
echo "src-link supply $PWD/$SUPPLY_DIR" >> feeds.conf.default
mkdir $SUPPLY_DIR && cd $SUPPLY_DIR
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config.git
