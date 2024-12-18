#!/bin/bash
#
# diy-part1.sh
#

# 添加 Feed 源
echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default

# 克隆 luci-theme-design 主题到 package 目录
git clone --depth 1 https://github.com/SAENE/luci-theme-design.git package/luci-theme-design
