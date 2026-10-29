#!/bin/sh

# 下载源码
git clone --depth 1 https://github.com/coolsnowwolf/lede.git && mv ./lede/* ./ && rm -rf lede

# 下载插件 (تم إبقاء الثيم فقط وحذف الباقي لتجنب الأخطاء)
rm -rf package/lean/luci-theme-argon
mkdir -p package/supply-packages && cd package/supply-packages
git clone --depth 1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config.git
