#!/bin/bash

# 1. 替换 Golang 1.26 (解决编译依赖问题)
# 必须先删除原有的 golang 文件夹
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 26.x feeds/packages/lang/golang

# 2. 清理可能导致冲突的旧软件包
# 防止 feeds 中自带的旧版包干扰
rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/packages/net/openclash
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/packages/net/passwall

# 3. 强制安装 OpenClash feed 源码
# -f 参数强制覆盖，确保使用你指定的版本
./scripts/feeds install -a -f -p openclash
