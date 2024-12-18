#!/bin/bash
#
# diy-part2.sh
#

# 确保 .config 文件存在
if [ -e .config ]; then
  # 启用 luci-theme-design
  echo 'CONFIG_PACKAGE_luci-theme-design=y' >> .config
  # 设置默认主题为 luci-theme-design
  echo 'CONFIG_DEFAULT_THEME="luci-theme-design"' >> .config
fi
