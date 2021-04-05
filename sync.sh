#!/bin/bash
clear

sudo mkdir /drone/src/work/
cd /drone/src/work/

sudo chmod -R 0777 .

repo init -q --no-repo-verify --depth=1 -u git://github.com/PitchBlackRecoveryProject/manifest_pb.git -b android-10.0 -g default,-device,-mips,-darwin,-notdefault

repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j 48 || repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j 8

curl -sL https://git.io/file-transfer | sh
sudo cp -fpr transfer /bin/
