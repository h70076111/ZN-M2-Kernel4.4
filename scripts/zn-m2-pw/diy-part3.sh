#!/bin/bash
# Description: OpenWrt DIY script part 3 (After Install feeds)

# 修改版本信息
sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='OpenWrt IPQ6000 ZN-M2 (build time: $(date +%Y%m%d))'/g" package/base-files/files/etc/openwrt_release

# design主题修改代理链接为 Passwall
sed -i -r "s#navbar_proxy = 'openclash'#navbar_proxy = 'passwall'#g" feeds/luci/themes/luci-theme-design/luasrc/view/themes/design/header.htm
