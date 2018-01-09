#!/bin/sh
#禁止Spotlight搜索
launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.Spotlight.plist
#禁止google软件更新
launchctl unload -w /Library/LaunchDaemons/com.google.keystone.daemon.plist
launchctl unload -w /Library/LaunchAgents/com.google.keystone.root.agent 
launchctl unload -w ~/Library/LaunchAgents/com.google.keystone.agent.plist
#打印机
#launchctl unload -w /System/Library/LaunchDaemons/org.cups.cupsd.plist
#launchctl unload -w /System/Library/LaunchDaemons/org.cups.cups-lpd.plist
#蓝牙
launchctl unload -w /System/Library/LaunchDaemons/com.apple.blued.plist
#apple无线基站
launchctl unload -w /System/Library/LaunchAgents/com.apple.AirPortBaseStationAgent.plist
launchctl unload -w /System/Library/Services/AppleSpell.service/Contents/Resources
sudo launchctl remove PhotoAnalysis
launchctl remove com.apple.photoanalysisd
launchctl remove com.apple.photolibraryd
launchctl unload -w /System/Library/LaunchAgents/com.apple.photoanalysisd.plist
