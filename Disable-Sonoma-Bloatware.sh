#!/bin/zsh
#Credit: Original idea and script disable.sh by pwnsdx https://gist.github.com/pwnsdx/d87b034c4c0210b988040ad2f85a68d3

#Disabling unwanted services on macOS 14.5 Sonoma
#Disabling SIP is required  ("csrutil disable" from Terminal in Recovery)
#Modifications are written in /private/var/db/com.apple.xpc.launchd/ disabled.plist, disabled.501.plist

# To revert, delete
# sudo rm /private/var/db/com.apple.xpc.launchd/disabled.plist
# sudo rm /private/var/db/com.apple.xpc.launchd/disabled.501.plist
# and reboot

# restart a agent/daemon:
# launchctl bootstrap system YZX
# launchctl kickstart -kp gui/501/YZX

# more references:
# bootup optimization https://github.com/Wyvern/macos/blob/master/macOS
# what is chronod https://discussions.apple.com/thread/255185176?sortBy=best
# disable sonoma bloatware https://gist.github.com/b0gdanw/812997a189f72f3953e0a1bb237f783d

# user
TODISABLE=()

TODISABLE+=('com.apple.accessibility.MotionTrackingAgent' \
'com.apple.ReportCrash' \
'com.apple.SafariBookmarksSyncAgent' \
'com.apple.Safari.SafeBrowsing.Service' \
'com.apple.amsaccountsd' \
'com.apple.amsengagementd' \
'com.apple.transparencyd' \
# prevent filerequester warning 'com.apple.bird' \
'com.apple.EscrowSecurityAlert' \
#iphone/ipad sync 'com.apple.AMPArtworkAgent' \
#iphone/ipad sync 'com.apple.AMPDeviceDiscoveryAgent' \
#iphone/ipad sync 'com.apple.AMPLibraryAgent' \
'com.apple.ap.adprivacyd' \
'com.apple.ap.adservicesd' \
'com.apple.ap.promotedcontentd' \
'com.apple.assistant_service' \
'com.apple.assistantd' \
'com.apple.BiomeAgent' \
'com.apple.biomesyncd' \
'com.apple.CallHistoryPluginHelper' \
# calendar local database 'com.apple.calaccessd' \
# calendar sync 'com.apple.dataaccess.dataaccessd' \
'com.apple.cloudd' \
'com.apple.cloudpaird' \
'com.apple.cloudphotod' \
'com.apple.CloudPhotosConfiguration' \
'com.apple.CloudSettingsSyncAgent' \
'com.apple.CommCenter-osx' \
'com.apple.CoreLocationAgent' \
'com.apple.donotdisturbd' \
'com.apple.ensemble' \
'com.apple.familycircled' \
'com.apple.familycontrols.useragent' \
'com.apple.familynotificationd' \
'com.apple.financed' \
'com.apple.followupd' \
#'com.apple.gamed' \
'com.apple.geod' \
'com.apple.geodMachServiceBridge' \
'com.apple.Siri.agent' \
'com.apple.homed' \
'com.apple.icloud.fmfd' \
# required for notes and some recent games 'com.apple.iCloudNotificationAgent' \
# required for notes and some recent games 'com.apple.iCloudUserNotifications' \
# required for notes and some recent games 'com.apple.icloud.searchpartyuseragent' \

# imessage / facetime
'com.apple.imagent' \
'com.apple.imautomatichistorydeletionagent' \
'com.apple.imtransferagent' \
'com.apple.avconferenced' \

'com.apple.intelligenceplatformd' \
'com.apple.itunescloudd' \
'com.apple.knowledge-agent' \
'com.apple.ManagedClient.cloudconfigurationd' \
'com.apple.ManagedClientAgent.enrollagent' \
'com.apple.Maps.mapspushd' \
'com.apple.Maps.pushdaemon' \
'com.apple.networkserviceproxy' \

'com.apple.networkserviceproxy-osx' \
'com.apple.mediaanalysisd' \
'com.apple.mediastream.mstreamd' \
'com.apple.newsd' \
'com.apple.nsurlsessiond' \
'com.apple.parsec-fbf' \
'com.apple.parsecd' \
'com.apple.passd' \
'com.apple.photoanalysisd' \
'com.apple.photolibraryd' \
'com.apple.progressd' \
'com.apple.protectedcloudstorage.protectedcloudkeysyncing' \
'com.apple.quicklook' \
'com.apple.quicklook.ui.helper' \
'com.apple.quicklook.ThumbnailsAgent' \
'com.apple.rapportd-user' \
'com.apple.remindd' \
'com.apple.routined' \
'com.apple.SafariCloudHistoryPushAgent' \
'com.apple.screensharing.agent' \
'com.apple.screensharing.menuextra' \
'com.apple.screensharing.MessagesAgent' \
'com.apple.ScreenTimeAgent' \
'com.apple.security.cloudkeychainproxy3' \
'com.apple.sharingd' \
'com.apple.sidecar-hid-relay' \
'com.apple.sidecar-relay' \
'com.apple.Siri.agent' \
'com.apple.siri.context.service' \
'com.apple.macos.studentd' \
'com.apple.siriknowledged' \
'com.apple.suggestd' \
'com.apple.tipsd' \
'com.apple.telephonyutilities.callservicesd' \
'com.apple.TMHelperAgent' \
'com.apple.TMHelperAgent.SetupOffer' \
'com.apple.triald' \
'com.apple.universalaccessd' \
#screentime
'com.apple.UsageTrackingAgent' \

'com.apple.videosubscriptionsd' \
'com.apple.WiFiVelocityAgent' \
'com.apple.SocialPushAgent' \
'com.apple.weatherd' \
# added for sonoma
# widget stuff, I don't use widgets
#'com.apple.chronod' \ # test notes
'com.apple.WeatherService' \

'com.apple.siriactionsd' \
'com.apple.SiriTTSTrainingAgent' \
'com.apple.icloud.searchpartyuseragent' \
'com.apple.betaenrollmentd' \
'com.apple.cmio.ContinuityCaptureAgent' \
# not required for mail
#'com.apple.email.maild' \ # test notes
#'com.apple.icloudmailagent' \
# for enabling two factor accounts like google mail? 'com.apple.MailServiceAgent' \
# for smarthome
'com.apple.homeenergyd' \

'com.apple.SafariHistoryServiceAgent' \
'com.apple.Safari.PasswordBreachAgent' \
'com.apple.SafariTechnologyPreview.SyncService' \
'com.apple.translationd' \
'com.apple.UserPictureSyncAgent' \
'com.apple.peopled' \
'com.apple.CloudPhotosConfiguration' \
'com.apple.textunderstandingd' \
'com.apple.avatarsd' \
# business chat
'com.apple.businessservicesd' \

'com.apple.promotedcontentd' \

# siri
'com.apple.sirittsd'
# spotlight core service TEST for reducing spotlight write access, required by mail 'com.apple.corespotlightd'
)

echo "Your user id:"
id -u

for agent in "${TODISABLE[@]}"
do
    echo "disabling ${agent}"
	launchctl bootout gui/501/${agent}
	launchctl disable gui/501/${agent}
done

# system
TODISABLE=()

TODISABLE+=('com.apple.bootpd' \
# icloud
'com.apple.analyticsd' \

'com.apple.osanalytics.osanalyticshelper' \
'com.apple.locationd' \
'com.apple.SubmitDiagInfo' \
'com.apple.symptomsd-diag' \
'com.apple.symptomsd' \
'com.apple.memoryanalyticsd' \
'com.apple.rtcreportingd' \
'com.apple.systemstats.daily' \
'com.apple.systemstats.analysis' \
'com.apple.systemstats.microstackshot_periodic' \
'com.apple.backupd' \
'com.apple.backupd-helper' \
# to test 'com.apple.biomed' \
# to test 'com.apple.biometrickitd' \
'com.apple.cloudd' \

'com.apple.cloudpaird' \
'com.apple.cloudphotod' \
'com.apple.CloudPhotosConfiguration' \
'com.apple.CoreLocationAgent' \
'com.apple.coreduetd' \
'com.apple.dhcp6d' \
'com.apple.familycontrols' \
'com.apple.findmymacmessenger' \
'com.apple.followupd' \
'com.apple.FollowUpUI' \
'com.apple.ftp-proxy' \
'com.apple.ftpd' \
# gaming 'com.apple.GameController.gamecontrollerd' \
'com.apple.geod' \
# prevent diskutility warning 'com.apple.icloud.findmydeviced' \
'com.apple.icloud.fmfd' \
'com.apple.icloud.searchpartyd' \
'com.apple.itunescloudd' \
'com.apple.ManagedClient.cloudconfigurationd' \
'com.apple.netbiosd' \
'com.apple.nsurlsessiond' \
'com.apple.protectedcloudstorage.protectedcloudkeysyncing' \
'com.apple.rapportd' \
'com.apple.screensharing' \
'com.apple.security.cloudkeychainproxy3' \
'com.apple.siri.morphunassetsupdaterd' \
'com.apple.siriinferenced' \
'com.apple.triald.system' \
'com.apple.wifianalyticsd' \
# added for sonoma
'com.apple.nearbyd' \
# collecting user data
'com.apple.dprivacyd' \
# apple pay
'com.apple.seld'
# TEST completely disable logd, since it writes tons of data
# 'com.apple.logd'
)

for daemon in "${TODISABLE[@]}"
do
    echo "disabling ${daemon}"
	sudo launchctl bootout system/${daemon}
	sudo launchctl disable system/${daemon}
done
