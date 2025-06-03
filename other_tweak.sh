#!/bin/sh

# 启用Rosetta 2兼容层
softwareupdate --install-rosetta

#关闭spotlight索引
# massively increase virtualized macOS by disabling spotlight.
sudo mdutil -i off -a
sudo mdutil -d /System/Volumes/Preboot /opt


sudo cp	sysctl.conf /etc/sysctl.conf
sudo cp limit.maxfiles.plist /Library/LaunchDaemons/limit.maxfiles.plist
sudo cp limit.maxproc.plist /Library/LaunchDaemons/limit.maxproc.plist

#关闭gatekeeper
#MacOS “安全与隐私” 设置项中的 允许“任何来源”应用安装项（打开，即关闭Gatekeeper）
#sudo spctl --master-disable
sudo spctl --global-disable

#使用verbols显示启动过程可以：
sudo nvram boot-args "srv=1 -v"

#取消自动开机：
sudo nvram AutoBoot=%00
#取消开机音效：
sudo nvram BootAudio=%00

#性能优先费电
#sudo nvram srv=1
#sudo nvram boot-args="csr-active-config=0x67 vm_compressor=2 serverperfmode=1 srv=1 -v"
sudo nvram boot-args="csr-active-config=0x67 vm_compressor=2 -v"

#Disable Remote Apple Events
sudo systemsetup -setremoteappleevents off
