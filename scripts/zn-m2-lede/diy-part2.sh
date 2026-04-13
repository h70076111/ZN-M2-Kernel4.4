#!/bin/bash
# 优先清理可能存在的同名包，防止编译中断
rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/packages/net/openclash

# 强制安装指定源的包
./scripts/feeds install -a -f -p openclash
./scripts/feeds install -a -f -p openclash_luci
