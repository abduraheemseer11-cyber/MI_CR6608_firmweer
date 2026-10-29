#!/bin/sh

# 下载源码 (استخدام كود Lean المستقر بدلاً من Lienol المحذوف)
git clone --depth 1 https://github.com/coolsnowwolf/lede.git && mv ./lede/* ./ && rm -rf lede

# 下载插件 (تم حذف جميع الحزم المعطلة)
rm -rf package/lean/luci-theme-argon
mkdir -p package/supply-packages && cd package/supply-packages
git clone --depth 1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config.git
