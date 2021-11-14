#!/bin/sh
#关闭spotlight索引
# massively increase virtualized macOS by disabling spotlight.
sudo mdutil -i off -a

#使用verbols显示启动过程可以：
sudo nvram boot-args "srv=1 -v"

#取消自动开机：
sudo nvram AutoBoot=%00
#取消开机音效：
sudo nvram BootAudio=%00

sudo nvram srv=1
