#!/bin/sh
#禁止Spotlight搜索
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.Spotlight.plist
#禁止google软件更新
launchctl unload -w /Library/LaunchDaemons/com.google.keystone.daemon.plist
launchctl unload -w /Library/LaunchAgents/com.google.keystone.root.agent 
launchctl unload -w ~/Library/LaunchAgents/com.google.keystone.agent.plist
#打印机
#sudo launchctl unload -w /System/Library/LaunchDaemons/org.cups.cupsd.plist
#sudo launchctl unload -w /System/Library/LaunchDaemons/org.cups.cups-lpd.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.blued.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.AirPortBaseStationAgent.plist
#禁止拼写检查
#sudo launchctl unload -w /System/Library/Services/AppleSpell.service/Contents/Resources
sudo mv /System/Library/Services/AppleSpell.service/Contents/Resources /System/Library/Services/AppleSpell.service/Contents/Resources.disabled
launchctl unload -w /System/Library/LaunchAgents/com.apple.photoanalysisd.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
#apple无线基站
sudo launchctl remove com.apple.AirPortBaseStationAgent
sudo launchctl remove com.apple.softwareupdated
#蓝牙
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.bluetoothd.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.ReportCrash.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.ReportCrash.Root.plist
#支付插件
sudo launchctl unload -w /Library/LaunchDaemons/com.alipay.DispatcherService.plist
#launchctl unload -w /System/Library/LaunchAgents/com.apple.touchbar.agent.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.SubmitDiagInfo.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.CrashReporterSupportHelper.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.softwareupdated.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.softwareupdate_notify_agent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.diagnostics_agent.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.airportd.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.suggestd.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.knowledge-agent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.CallHistorySyncHelper.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.CallHistoryPluginHelper.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.siriknowledged.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.sysdiagnose.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.AirPlayXPCHelper.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.AirPlayUIAgent.plist
#launchctl unload -w /System/Library/LaunchAgents/com.apple.CalendarAgent.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.nfcd.plist
#launchctl unload -w /System/Library/LaunchAgents/com.apple.scopedbookmarkagent.xpc.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.analyticsd.plist
#launchctl unload -w /System/Library/LaunchAgents/com.apple.photolibraryd.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.ContactsAgent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.contacts.donation-agent.plist
#launchctl unload -w /System/Library/LaunchAgents/com.apple.cloudphotosd.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.findmymac.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.corespeechd.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.corespotlightd.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.findmymacmessenger.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.backupd-helper.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.backupd.plist
#sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.ifdreader.plist
#sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.opendirectoryd.plist
#launchctl unload -w /System/Library/LaunchAgents/com.apple.CommCenter-osx.plist
