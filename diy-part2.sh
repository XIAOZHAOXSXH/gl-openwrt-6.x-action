#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme to luci-theme-design
# Ensure luci-theme-design is selected in the configuration
# This assumes that luci-theme-design is correctly cloned into package/luci-theme-design

# Use uci to set the default theme
# Note: This requires that the theme is already compiled and available in the build system
# Alternatively, you can directly modify the .config file to select the theme

# Uncomment the following lines if you want to modify the .config directly
# sed -i 's/^#\(CONFIG_PACKAGE_luci-theme-design=y\)/\1/' .config
# sed -i 's/^CONFIG_THEME_luci-theme-bootstrap/CONFIG_THEME_luci-theme-design/' .config

# Alternatively, set the theme using uci
# This method might not work directly during the build process, so it's safer to modify .config

# Example of modifying .config to set the default theme
# Add luci-theme-design to the selected themes
echo 'CONFIG_PACKAGE_luci-theme-design=y' >> .config
echo 'CONFIG_DEFAULT_THEME="luci-theme-design"' >> .config
