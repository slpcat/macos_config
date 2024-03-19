#!/bin/sh
#需要进入RecovoryHD恢复模式禁用SIP系统完整性保护
# csrutils disable
# csrutil authenticated-root disable
#删除快照
#diskutil apfs deletesnapshot disk2s5 -name 快照名

#禁止Spotlight搜索
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
sudo mv /System/Library/LaunchDaemons/com.apple.metadata.mds.plist /System/Library/LaunchAgentsIgnored
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.Spotlight.plist
sudo mv /System/Library/LaunchAgents/com.apple.Spotlight.plist /System/Library/LaunchAgentsIgnored

#禁止google软件更新
sudo launchctl bootout system /Library/LaunchAgents/com.google.keystone.root.agent 

sudo launchctl bootout system /Library/LaunchDaemons/com.google.keystone.daemon.plist
sudo launchctl bootout system /Library/LaunchDaemons/com.microsoft.EdgeUpdater.wake.system.plist
sudo launchctl bootout system /Library/LaunchDaemons/com.microsoft.autoupdate.helper.plist

launchctl bootout system ~/Library/LaunchAgents/com.google.keystone.agent.plist
launchctl bootout system ~/Library/LaunchAgents/com.google.GoogleUpdater.wake.plist


sudo launchctl bootout system /Library/LaunchAgents/com.microsoft.update.agent.plist
#sudo launchctl bootout system /Library/LaunchAgents/com.tencent.LemonMonitor.plist


#打印机
#sudo launchctl bootout system /System/Library/LaunchDaemons/org.cups.cupsd.plist
#sudo launchctl bootout system /System/Library/LaunchDaemons/org.cups.cups-lpd.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.AirPortBaseStationAgent.plist

#stop the MRT process
sudo launchctl stop com.apple.mrt
sudo launchctl remove com.apple.mrt
#/System/Library/LaunchDaemons/com.apple.mrt.plist
sudo rm /System/Library/LaunchDaemons/com.apple.mrt.plist
sudo rm /System/Library/LaunchAgents/com.apple.mrt.uiagent.plist
sudo rm /System/Library/CoreServices/MRTAgent.app
sudo rm /usr/libexec/MRT

#禁用和启用macosx的swap
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.dynamic_pager.plist
sudo mv /System/Library/LaunchDaemons/com.apple.dynamic_pager.plist /System/Library/LaunchAgentsIgnored
sudo rm /private/var/vm/swapfile*

#禁止拼写检查

#sudo launchctl bootout system /System/Library/Services/AppleSpell.service/Contents/Resources
sudo mv /System/Library/Services/AppleSpell.service/Contents/Resources /System/Library/Services/AppleSpell.service/Contents/Resources.disabled

sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.photoanalysisd.plist
sudo mv /System/Library/LaunchAgents/com.apple.photoanalysisd.plist /System/Library/LaunchAgentsIgnored
#sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

#apple无线基站
#sudo launchctl remove com.apple.AirPortBaseStationAgent
#sudo launchctl remove com.apple.softwareupdated

#蓝牙
#sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.bluetoothd.plist
#sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.blued.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.ReportCrash.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.ReportCrash.Root.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.ReportCrash.Root.plist

#支付插件
sudo launchctl bootout system /Library/LaunchDaemons/com.alipay.DispatcherService.plist
#launchctl bootout system /System/Library/LaunchAgents/com.apple.touchbar.agent.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.SubmitDiagInfo.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.CrashReporterSupportHelper.plist
#sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.softwareupdated.plist
#sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.softwareupdate_notify_agent.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.diagnostics_agent.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.diagnosticd.plist

#sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.airportd.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.suggestd.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.knowledge-agent.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.CallHistorySyncHelper.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.CallHistoryPluginHelper.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.siriknowledged.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.sysdiagnose.plist
#sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.AirPlayXPCHelper.plist
#sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.AirPlayUIAgent.plist
#sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.CalendarAgent.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.nfcd.plist
#launchctl bootout system /System/Library/LaunchAgents/com.apple.scopedbookmarkagent.xpc.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.analyticsd.plist
#launchctl bootout system /System/Library/LaunchAgents/com.apple.photolibraryd.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.ContactsAgent.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.contacts.donation-agent.plist
#launchctl bootout system /System/Library/LaunchAgents/com.apple.cloudphotosd.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.findmymac.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.corespeechd.plist
sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.corespotlightd.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.findmymacmessenger.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.backupd-helper.plist
sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.backupd.plist
#sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.ifdreader.plist
#sudo launchctl bootout system /System/Library/LaunchDaemons/com.apple.opendirectoryd.plist
#sudo launchctl bootout system /System/Library/LaunchAgents/com.apple.CommCenter-osx.plist
