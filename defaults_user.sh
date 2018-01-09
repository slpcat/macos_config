#!/bin/sh
#关闭窗口和对话框弹出的动画特效
defaults write -g NSAutomaticWindowAnimationEnabled -bool FALSE
#defaults delete -g NSAutomaticWindowAnimationEnabled
#关闭快速查看的动画特效
defaults write com.apple.finder QLPanelAnimationDuration -int 0;killall Finder
#defaults delete com.apple.finder QLPanelAnimationDuration;killall Finder
#关闭Mission Control的动画特效
defaults write com.apple.dock expose-animation-duration -int 0;killall Dock
#defaults delete com.apple.dock expose-animation-duration;killall Dock
#关闭文件保存和打印对话框的动画效果
defaults write -g NSWindowResizeTime -float 0.01
#defaults delete -g NSWindowResizeTime
#关闭Launchpad界面动画效果
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -int 0;killall Dock
#defaults delete com.apple.dock springboard-show-duration
#defaults delete com.apple.dock springboard-hide-duration;killall Dock
#打开Quartz 2D Extreme
sudo defaults write /Library/Preferences/com.apple.windowserver Quartz2DExtremeEnabled -bool yes
#关闭beamsync
sudo defaults write /Library/Preferences/com.apple.windowserver Compositor -dict deferredUpdates 0
#更改 Launchpad 背景效果默认为清晰
defaults write com.apple.dock springboard-blur-radius -int 0;killall Dock
defaults write com.apple.dock springboard-page-duration -int 0;killall Dock
#defaults delete com.apple.dock springboard-page-duration;killall Dock
#关闭Dock栏的动画效果
defaults write com.apple.dock autohide-time-moidifier -int 0;killall Dock
#defaults write com.apple.dock autohide-time-moidifier -int 0;killall Dock
defaults write -g AppleInterfaceStyle Dark
#最小化效果缩放
defaults write com.apple.dock mineffect -string scale
defaults write -g AppleShowScrollBars Always
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool FALSE
defaults write -g WebAutomaticSpellingCorrectionEnabled -bool FALSE
#休眠时间
#caffeinate -t 900
#Enable 2D Dock Mode
defaults write com.apple.dock no-glass -boolean YES
#Show Only Active Applications
#defaults write com.apple.dock static-only -bool TRUE
#Change the Maximum Magnification Level
defaults write com.apple.dock largesize -float 256
#Remove the Auto-Hide Dock Delay
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
#Enable Text Selection in Quick Look Windows
defaults write com.apple.finder QLEnableTextSelection -bool TRUE;killall Finder
#Enable multitouch trackpad auto orientation sensing (for all users) 
#defaults write /Library/Preferences/com.apple.MultitouchSupport ForceAutoOrientation -boolean
#Map navigation swipe to 3 fingers (turn this off to get 4-finger navigation swipe)
#defaults write com.apple.systempreferences com.apple.preference.trackpad.3fdrag-4fNavigate -boolean-neg
#Hide Shutdown Button on Login Window
#defaults write com.apple.loginwindow ShutDownDisabled -bool
#Remove Restart Button From Login Window
#defaults write com.apple.loginwindow RestartDisabled -bool
#Disable creation of Metadata Files on Network Volumes (avoids creation of .DS_Store and AppleDouble files.)
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
#Disable creation of Metadata Files on USB Volumes (avoids creation of .DS_Store and AppleDouble files.)
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
#Disable Login for Hidden User ">Console" 
defaults write com.apple.loginwindow DisableConsoleAccess -bool true
#Add a message to the login screen
#defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Your Message"
#Change login screen background
#defaults write /Library/Preferences/com.apple.loginwindow DesktopPicture "/Library/Desktop Pictures/Aqua Blue.jpg"
#Disable transparency in the menu bar and elsewhere
defaults write com.apple.universalaccess reduceTransparency -bool true
#Disable Expose
defaults write com.apple.dock mcx-expose-disabled -bool true
#Enable 64-bit Kernel
#defaults write /Library/Preferences/SystemConfiguration/com.apple.Boot.plist Kernel Flags -string
#Turn off the “Application Downloaded from Internet” quarantine warning:
defaults write com.apple.LaunchServices LSQuarantine -bool NO
#Every App
#Restore the the 'Save As' menu item (Equivalent to adding a Keyboard shortcut in the System Preferences.app )
# defaults write -g NSUserKeyEquivalents -dict-add 'Save As...' '@$S'
#Save to disk (not to iCloud) by default:
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false
#Expand 'Save As…' dialog boxes by default:
defaults write -g NSNavPanelExpandedStateForSaveMode -boolean true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true
#Expand print panel dialog boxes by default:
defaults write -g PMPrintingExpandedStateForPrint -boolean true
defaults write -g PMPrintingExpandedStateForPrint2 -bool true
#Global User Interface Scale Multiplier:
#defaults write -g AppleDisplayScaleFactor -float
#Enable continuous spell checking everywhere:
defaults write -g WebContinuousSpellCheckingEnabled -boolean false
#Enable automatic dash replacement everywhere:
defaults write -g WebAutomaticDashSubstitutionEnabled -boolean true
#Enable automatic text replacement everywhere:
defaults write -g WebAutomaticTextReplacementEnabled -boolean true
#Quit Printer App after Print Jobs complete:
# defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
#Icon Size for Open Panels:
# defaults write -g NSNavPanelIconViewIconSizeForOpenMode -number
#Keyboard press and hold behavior:
defaults write -g ApplePressAndHoldEnabled -boolean true
#Monitor font smoothing
#Display the current font smoothing:
# defaults -currentHost read -globalDomain AppleFontSmoothing
#Change the font smoothing (0=off, 1=light, 2=Medium/flat panel, 3=strong/blurred)
#This is mostly needed for non-Apple displays. 
defaults -currentHost write -globalDomain AppleFontSmoothing -int 0
#Restart applications to see the effect
#Delete the setting completely (restore default)
#$ defaults -currentHost delete -globalDomain AppleFontSmoothing
#Set the font anti-aliasing minimum sizes, globally or per-application:
defaults -currentHost write .GlobalPreferences AppleSmoothFontsSizeThreshold -int 16
defaults -currentHost write .GlobalPreferences AppleFontSmoothing -int 0
defaults -currentHost write com.apple.safari AppleAntiAliasingThreshold -int 16
#safari dev menu
defaults write com.apple.safari IncludeDevelopMenu 1
#Address Book
#Show Contact Reflection:
#$ defaults write com.apple.AddressBook reflection -boolean
#bbedit
#Use old style modal Find Dialog:
#$ defaults write com.barebones.bbedit FindDialog:UseOldSk00lFindDialog -boolean
#Dashboard launcher
#Drag widgets out of dashboard (devmode) 
defaults write com.apple.dashboard devmode -boolean true
#Dictionary
#Reuse dictionary definition window:
#$ defaults write com.apple.Dictionary ProhibitNewWindowForRequest -boolean
#DiskUtility
#Show hidden Partitions:
defaults write com.apple.DiskUtility DUShowEveryPartition -boolean true
#Dock
#Show indicator lights for open applications in the dock:
defaults write com.apple.dock show-process-indicators -bool true
#Disable Bouncing dock icons:
defaults write com.apple.dock no-bouncing -bool True
#Minimize windows into their application’s icon 
defaults write com.apple.dock minimize-to-application -bool true
#Make the Dock Icon of any 'Hidden' Applications Dim/Translucent:
# defaults write com.apple.Dock showhidden -bool YES 
#Disable multi-display swoosh animations 
defaults write com.apple.dock workspaces-swoosh-animation-off -bool true
#Remove the animation when hiding or showing the dock
defaults write com.apple.dock autohide-time-modifier -float 0
#Enable iTunes pop-up notifications:
# defaults write com.apple.dock itunes-notifications -boolean dock
#Turn the Dock icons translucent for applications that are open but hidden: 
#$ defaults write com.apple. Dock showhidden -bool YES;
#Add a 'Recent Applications' stack to the Dock.
# defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'
#Stacks, Activate Mouse Over Gradient:
defaults write com.apple.dock mouse-over-hilte-stack -boolean YES
#Finder
#Show hidden files:
# defaults write com.apple.finder AppleShowAllFiles TRUE
#Hide hidden files (default)
# defaults write com.apple.finder AppleShowAllFiles FALSE
#Show all filename extensions 
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true
#Disable the macOS Crash reporter (quit dialog after an application crash)
defaults write com.apple.CrashReporter DialogType none
#To enable the crash reporter (default) change none to prompt
#Disable dashboard widgets (saves RAM)
defaults write com.apple.dashboard mcx-disabled -boolean YES
#To Enable dashboard widgets (default) set this to NO
#Disable the New Window Animation:
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO
# Show the Status Bar, this can also be toggled on the View menu:
defaults write com.apple.finder ShowStatusBar -bool true
# Hide the Status Bar (Default) 
#$ defaults write com.apple.finder ShowStatusBar -bool false
#Start the status bar Path at $HOME (instead of Hard drive)
#$ defaults write /Library/Preferences/com.apple.finder PathBarRootAtHome -bool
#Enable Remote Disc (1)
# defaults write com.apple.NetworkBrowser EnableODiskBrowsing -boolean
#Enable Remote Disc (2)
#$ defaults write com.apple.NetworkBrowser ODSSupported -boolean
#Enable movie preview thumbnails:
defaults write com.apple.QuickLookDaemon QLDisableQTThumbnails -boolean-neg
#Minimum size for playable previews:
# defaults write com.apple.finder QLInlinePreviewMinimumSupportedSize -integer
#Auto stop previews when scrolling:
# defaults write com.apple.finder AutoStopWhenScrollingOffBounds -boolean
#Auto stop previews when selection changes:
# defaults write com.apple.finder AutoStopWhenSelectionChanges -boolean
#CoverFlow background color:
# defaults write com.apple.finder IKImageFlowBackgroundColor -boolean
#Show X-ray for folders with custom icons:
# defaults write com.apple.DisableXRayForFoldersWithCustomIcons -boolean-neg
#Show X-ray folders in QuickLook:
# defaults write com.apple.finder QLEnableXRayFolders -boolean
#Enable slow motion with shift key on QuickLook:
# defaults write com.apple.finder QLEnableSlowMotion -boolean
#Hide QuickLook on deactivation or application switch:
# defaults write com.apple.finder QLHidePanelOnDeactivate -boolean
#When performing a search, search the current folder by default (the default 'This Mac' is "SCev")
# defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
#Show version column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.version.visible -boolean
#Show label column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.label.visible -boolean
#Show comments column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.comments.visible -boolean
#Show size column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.size.visible -boolean
#Set the sidebar icon size to small, medium or Large:
# defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1
# defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
# defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1
#Disable the warning when changing a file extension 
# defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
#Use white text for desktop icons:
# defaults write com.apple.finder Desktop.HasDarkBackground -boolean
#Show stripes in list views:
# defaults write com.apple.finder FXListViewStripes -boolean
#Allow quitting Finder, like any other app. doing so will also hide desktop icons. 
#This is only really useful with a 3rd party file manager: 
# defaults write com.apple.finder QuitMenuItem -bool YES; killall Finder 
#Front Row launcher
#Set preferred display to use:
# defaults write com.apple.frontrow FrontRowUsePreferredDisplayID -integer
#iCal
#Log HTTP Activity:
#$ defaults write com.apple.iCal LogHTTPActivity -boolean
#iTunes 10
#Make the arrows next to artist & album jump to local iTunes library folders instead of Store:
# defaults write com.apple.iTunes show-store-link-arrows -bool YES
# defaults write com.apple.iTunes invertStoreLinks -bool YES
#To restore the default change the YES to NO
#Restore the standard close/minimise buttons:
#$ defaults write com.apple.iTunes full-window -1
#Hide the iTunes Genre list:
# defaults write com.apple.iTunes show-genre-when-browsing -bool FALSE
#Mail
#Close Apple Mail before making any changes.
#Set a minimum font size of 14px (affects reading and sending email):
# defaults write com.apple.mail MinimumHTMLFontSize 14
#Force all Mail messages to display as plain text:
# defaults write com.apple.mail PreferPlainText -bool TRUE
#For rich text (the default) set it to FALSE
#Disable tracking of Previous Recipients:
# defaults write com.apple.mail SuppressAddressHistory -boolean
#Send Windows friendly attachments:
# defaults write com.apple.mail SendWindowsFriendlyAttachments -boolean
#Mouse
#Enable momentum scrolling for Magic Mouse:
# defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseMomentumScroll -boolean
#OmniGraffle
#Allow scroll wheel zooming:
# defaults write com.omnigroup.OmniGraffle DisableScrollWheelZooming -boolean-neg
#Allow scroll wheel zooming in OmniGrafflePro:
# defaults write com.omnigroup.OmniGrafflePro DisableScrollWheelZooming -boolean-neg
#Preview
#Scale images by default when printing:
# defaults write write com.apple.Preview PVImagePrintingScaleMode -boolean
#Preview Auto-rotate by default when printing:
# defaults write write com.apple.Preview PVImagePrintingAutoRotate -boolean
#Quit Always Keeps Windows:
# defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -boolean
#Quick Time Player
#Automatically show Closed Captions (CC) when opening a Movie:
# defaults -currentHost write com.apple.QuickTimePlayerX.plist MGEnableCCAndSubtitlesOnOpen -boolean
#Safari
#Enable encoding detector:
# defaults write com.apple.Safari WebKitUsesEncodingDetector -boolean
#Tooltip Font Size:
# defaults write com.apple.Safari NSToolTipsFontSize -float
#Enable debug menu:
defaults write com.apple.Safari IncludeDebugMenu -boolean true
#ScreenSharing
#Debug (To Show Bonjour)
#$ defaults write com.apple.ScreenSharing debug -boolean
#Do Not Send Special Keys to Remote Machine
# defaults write com.apple.ScreenSharing DoNotSendSystemKeys -boolean
#Skip local address check:
# defaults write com.apple.ScreenSharing skipLocalAddressCheck -boolean
#Screen sharing image quality 
# defaults write com.apple.ScreenSharing controlObserveQuality -integer
#Number of recent hosts on ScreenSharingMenulet:
# defaults write com.klieme.ScreenSharingMenulet maxHosts -integer
#Display IP-Addresses of the local hosts on ScreenSharingMenulet:
# defaults write com.klieme.ScreenSharingMenulet showIPAddresses -boolean
#Software update
#While applying any changes to SoftwareUpdate defaults, set software update to OFF to avoid any conflict with the defaults system cache. (Also close the System Preferences app)
sudo softwareupdate --schedule OFF
#<apply changes>
#sudo softwareupdate --schedule ON
#Automatically check for updates (required for any downloads):
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticCheckEnabled -bool false
#Download updates automatically in the background
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool false
#Install app updates automatically:
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool false
#Don't Install macos updates automatically
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool false
#Install system data file updates automatically:
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist ConfigDataInstall -bool false
#Install critical security updates automatically:
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist CriticalUpdateInstall -bool false
#Spaces
#When switching applications, switch to respective space
# defaults write -g AppleSpacesSwitchOnActivate -bool true
#RemoteManagement
#Disable Multicast:
sudo defaults write /Library/Preferences/com.apple.RemoteManagement ARD_MulticastAllowed -bool false
#Remote Desktop
#Set the maximum number of computers that can be observed:
defaults write com.apple.RemoteDesktop multiObserveMaxPerScreen -integer 9
#(up to 50 opposed to the default of 9)
#Terminal
#Terminal windows take focus with mouse over window:
defaults write com.apple.terminal FocusFollowsMouse -string YES
#Terminal windows take focus with click (default)
#defaults write com.apple.terminal FocusFollowsMouse -string NO
#TextWrangler
#Camel Case Navigation:
#$ defaults write com.barebones.textwrangler Editor:ControlArrowCamelCase -bool
#TimeMachine
#Auto backup:
defaults write com.apple.TimeMachine AutoBackup =0
#Backup frequency default= 3600 seconds (every hour) 1800 = 1/2 hour, 7200=2 hours 
#sudo defaults write /System/Library/Launch Daemons/com.apple.backupd-auto StartInterval -int 1800
#X11 (2.4.0)
#Auto-quit on close last window (XQuartz) 
defaults write org.macosforge.xquartz.X11 wm_auto_quit -bool true
#Focus follows mouse (10.5.5 and up) (XQuartz) 
#$ defaults write org.macosforge.xquartz.X11 wm_ffm -boolean
