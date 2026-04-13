#!/bin/bash
# File name: diy-part3.sh

# 1. 修改版本显示信息 (ZN-M2 专用)
sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='OpenWrt ZN-M2 (Build $(date +%Y%m%d))'/g" package/base-files/files/etc/openwrt_release

# 2. 修改主题默认 Proxy 链接到 OpenClash
# 适配 Design 主题的顶部导航
if [ -f feeds/luci/themes/luci-theme-design/luasrc/view/themes/design/header.htm ]; then
    sed -i -r "s#navbar_proxy = 'passwall'#navbar_proxy = 'openclash'#g" feeds/luci/themes/luci-theme-design/luasrc/view/themes/design/header.htm
fi

# 3. 修正某些插件对 golang 版本的硬编码依赖（可选）
# 如果遇到 golang 报错，可以在此处强制同步
# ./scripts/feeds update -i && ./scripts/feeds install -a
