#!/bin/sh
#关闭spotlight索引
sudo -i mdutil -a -i off

#使用verbols显示启动过程可以：
sudo nvram boot-args "-v"
#取消自动开机：
sudo nvram AutoBoot=%00
#取消开机音效：
sudo nvram BootAudio=%00
