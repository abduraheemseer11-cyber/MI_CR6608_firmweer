#!/bin/sh

#修改登录IP
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# نسخ سكريبت الإعدادات المخصصة الخاص بك (إغلاق DHCP، تغيير الواي فاي، إلخ)
mkdir -p files/etc/uci-defaults
cp extra-files/etc/uci-defaults/99-custom-setup files/etc/uci-defaults/
chmod +x files/etc/uci-defaults/99-custom-setup
