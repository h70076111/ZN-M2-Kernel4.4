#!/bin/bash
# Description: OpenWrt DIY script part 1 (Before Update feeds)

# 移除原有的 golang feed 并替换为 26.x 版本源
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 26.x feeds/packages/lang/golang

# 如果需要添加其他插件源，可以在此处添加
# echo 'src-git custom https://github.com/xiaorouji/openwrt-passwall.git;packages' >> feeds.conf.default
