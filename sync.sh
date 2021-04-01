#!/bin/bash
clear
source configs/build*.sh

mkdir /drone/src/work/
cd /drone/src/work/

repo init -q --no-repo-verify --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-10.0 -g default,-device,-mips,-darwin,-notdefault

repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j 30 || repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j 8