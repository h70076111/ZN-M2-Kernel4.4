#!/bin/bash
# File name: diy-part3.sh

# 修改版本显示信息
sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='OpenWrt ZN-M2 (Build $(date +%Y%m%d))'/g" package/base-files/files/etc/openwrt_release

# 1. 替换 Golang 1.26 (解决编译依赖问题)
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 26.x feeds/packages/lang/golang

# 2. 【关键】在换完 Golang 后强制重新同步并安装所有 feed
./scripts/feeds update -i
./scripts/feeds install -a -f

# 3. 修改主题默认 Proxy 链接到 OpenClash
sed -i -r "s#navbar_proxy = 'passwall'#navbar_proxy = 'openclash'#g" feeds/luci/themes/luci-theme-design/luasrc/view/themes/design/header.htm
