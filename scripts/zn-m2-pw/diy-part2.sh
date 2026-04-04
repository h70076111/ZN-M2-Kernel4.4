#!/bin/bash
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 优先安装 passwall 源，并强制覆盖冲突包
./scripts/feeds install -a -f -p passwall_packages
./scripts/feeds install -a -f -p passwall_luci

# 强制安装我们手动替换的 golang
./scripts/feeds install -a -f -p packages golang

# 安装其余所有插件
./scripts/feeds install -a
