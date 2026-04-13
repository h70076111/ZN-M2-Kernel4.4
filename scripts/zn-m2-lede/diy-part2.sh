#!/bin/bash
# File name: diy-part2.sh

# 1. 清理可能导致冲突的旧软件包，确保 OpenClash 和 Passwall 使用最新源码
rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/packages/net/openclash
rm -rf feeds/luci/applications/luci-app-passwall

# 2. 优先安装 OpenClash 相关的包
./scripts/feeds install -a -f -p openclash
