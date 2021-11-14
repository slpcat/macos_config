#!/bin/sh

#系统级设置
#关闭窗口和对话框弹出的动画特效
defaults write -g NSAutomaticWindowAnimationEnabled -bool false
defaults write -g NSAutomaticWindowAnimationsEnabled -bool FALSE

#defaults delete -g NSAutomaticWindowAnimationEnabled

#开启滚动条
defaults write -g AppleShowScrollBars Always

#禁止拼写检查
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g WebAutomaticSpellingCorrectionEnabled -bool false
defaults write -g WebContinuousSpellCheckingEnabled -bool false

#打开Quartz 2D Extreme
sudo defaults write /Library/Preferences/com.apple.windowserver Quartz2DExtremeEnabled -bool true

#开启 macOS 的 HiDPI 选项
sudo defaults write /Library/Preferences/com.apple.windowserver.plist DisplayResolutionEnabled -bool true

#关闭beamsync
sudo defaults write /Library/Preferences/com.apple.windowserver Compositor -dict deferredUpdates 0

#启用暗黑模式
defaults write -g AppleInterfaceStyle Dark

#Disable System UI Audio Sound Effects
defaults write com.apple.systemsound com.apple.sound.uiaudio.enabled -bool false
defaults write -g com.apple.sound.beep.volume -int 0 
defaults write -g com.apple.sound.uiaudio.enabled -bool false
defaults write -g com.apple.springing.enabled -bool false

#关闭文件保存和打印对话框的动画效果
defaults write -g NSWindowResizeTime -float 0.01
#defaults delete -g NSWindowResizeTime

#Remove Restart Button From Login Window
#defaults write com.apple.loginwindow RestartDisabled -bool

#Hide Shutdown Button on Login Window
#defaults write com.apple.loginwindow ShutDownDisabled -bool

#remove accounts from the login window type this command with the short name of each account you wish to remove
sudo defaults write /Library/Preferences/com.apple.loginwindow HiddenUsersList -array-add root hmuser cface

#Disable creation of Metadata Files on Network Volumes (avoids creation of .DS_Store and AppleDouble files.)
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

#Disable creation of Metadata Files on USB Volumes (avoids creation of .DS_Store and AppleDouble files.)
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable mouse pointer "shake to locate"
defaults write ~/Library/Preferences/.GlobalPreferences CGDisableCursorLocationMagnification -bool YES

#Keyboard press and hold behavior:
defaults write -g ApplePressAndHoldEnabled -boolean true

#Monitor font smoothing
#Display the current font smoothing:
# defaults -currentHost read -globalDomain AppleFontSmoothing
#Change the font smoothing (0=off, 1=light, 2=Medium/flat panel, 3=strong/blurred)
#This is mostly needed for non-Apple displays. 
defaults -currentHost write -globalDomain AppleFontSmoothing -int 0
defaults write -g CGFontRenderingFontSmoothingDisabled -bool FALSE
#Restart applications to see the effect
#Delete the setting completely (restore default)
#$ defaults -currentHost delete -globalDomain AppleFontSmoothing
#Set the font anti-aliasing minimum sizes, globally or per-application:
defaults -currentHost write .GlobalPreferences AppleSmoothFontsSizeThreshold -int 16
defaults -currentHost write .GlobalPreferences AppleFontSmoothing -int 0
defaults -currentHost write com.apple.safari AppleAntiAliasingThreshold -int 16
#Set the history limit in Safari to a certain number of items and and/or a certain age
defaults write com.apple.Safari WebKitHistoryItemLimit 2000
defaults write com.apple.Safari WebKitHistoryAgeInDaysLimit 30

#Change System Fonts
defaults write -g NSBoldSystemFont LucidaGrande-Bold 
defaults write -g NSBoldSystemFontSize -int 13 
defaults write -g NSFixedPitchFont Menlo-Regular 
defaults write -g NSFixedPitchFontSize -int 11 
defaults write -g NSFont Helvetica 
defaults write -g NSFontSize -int 12 
defaults write -g NSLabelFont LucidaGrande 
defaults write -g NSLabelFontSize -int 10 
defaults write -g NSMessageFont LucidaGrande 
defaults write -g NSMessageFontSize -int 13 
defaults write -g NSPaletteFont LucidaGrande 
defaults write -g NSPaletteFontSize -int 10 
defaults write -g NSSystemFont LucidaGrande 
defaults write -g NSSystemFontSize -int 13
defaults write -g NSTitleBarFont LucidaGrande 
defaults write -g NSTitleBarFontSize -int 13 
defaults write -g NSToolTipsFont LucidaGrande 
defaults write -g NSToolTipsFontSize -int 11

# Keyboard
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 12 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

#Mouse
#Enable momentum scrolling for Magic Mouse:
# defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseMomentumScroll -boolean
#OmniGraffle
#Allow scroll wheel zooming:
# defaults write com.omnigroup.OmniGraffle DisableScrollWheelZooming -boolean-neg
#Allow scroll wheel zooming in OmniGrafflePro:
# defaults write com.omnigroup.OmniGrafflePro DisableScrollWheelZooming -boolean-neg

# Enable AirDrop over Ethernet
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

#电源管理
# Disable Mac from sleeping entirely
/usr/bin/sudo /usr/bin/pmset -a sleep 0

# Put the hard disk(s) to sleep when possible: Disabled when on battery or not
/usr/bin/sudo /usr/bin/pmset -a disksleep 0

# Put display to sleep after 10 minutes
/usr/bin/sudo /usr/bin/pmset -a displaysleep 10

#Software update
#While applying any changes to SoftwareUpdate defaults, set software update to OFF to avoid any conflict with the defaults system cache. (Also close the System Preferences app)
sudo softwareupdate --schedule OFF

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

#Disable Login for Hidden User ">Console" 
defaults write com.apple.loginwindow DisableConsoleAccess -bool true

#Add a message to the login screen
#defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Your Message"

#Change login screen background
#sudo defaults write /Library/Preferences/com.apple.loginwindow DesktopPicture "/Library/Desktop Pictures/Aqua Blue.jpg"
sudo defaults write /Library/Preferences/com.apple.loginwindow DesktopPicture ""

#Disable transparency in the menu bar and elsewhere
defaults write com.apple.universalaccess reduceTransparency -bool true

#Reduce Motion & Transparency
defaults write com.apple.Accessibility DifferentiateWithoutColor -int 1
defaults write com.apple.Accessibility ReduceMotionEnabled -int 1
defaults write com.apple.universalaccess reduceMotion -int 1
defaults write com.apple.universalaccess reduceTransparency -int 1
defaults write com.apple.Accessibility ReduceMotionEnabled -int 1

#Enable multi-sessions
sudo /usr/bin/defaults write .GlobalPreferences MultipleSessionsEnabled -bool TRUE

defaults write "Apple Global Domain" MultipleSessionsEnabled -bool true

#Disable screen locking
#defaults write com.apple.loginwindow DisableScreenLock -bool true

#Show a lighter username/password prompt instead of a list of all the users

defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true
defaults write com.apple.loginwindow AllowList -string '*'

#Disable saving the application state on shutdown

defaults write com.apple.loginwindow TALLogoutSavesState -bool false

#Disable apps from going to sleep at all
defaults write NSGlobalDomain NSAppSleepDisabled -bool YES

#Enable multitouch trackpad auto orientation sensing (for all users) 
#defaults write /Library/Preferences/com.apple.MultitouchSupport ForceAutoOrientation -boolean

#Map navigation swipe to 3 fingers (turn this off to get 4-finger navigation swipe)
#defaults write com.apple.systempreferences com.apple.preference.trackpad.3fdrag-4fNavigate -boolean-neg

#Turn off the “Application Downloaded from Internet” quarantine warning:
defaults write com.apple.LaunchServices LSQuarantine -bool false

#Show the ~/Library and /Voluemes folder
chflags nohidden ~/Library
sudo chflags nohidden /Volumes

#Restore the the 'Save As' menu item (Equivalent to adding a Keyboard shortcut in the System Preferences.app )
# defaults write -g NSUserKeyEquivalents -dict-add 'Save As...' '@$S'

#Save to disk (not to iCloud) by default:
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false

#Expand 'Save As…' dialog boxes by default:
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true

#Expand print panel dialog boxes by default:
defaults write -g PMPrintingExpandedStateForPrint -bool true
defaults write -g PMPrintingExpandedStateForPrint2 -bool true

#Global User Interface Scale Multiplier:
#defaults write -g AppleDisplayScaleFactor -float

#Enable automatic dash replacement everywhere:
defaults write -g WebAutomaticDashSubstitutionEnabled -bool true

#Enable automatic text replacement everywhere:
defaults write -g WebAutomaticTextReplacementEnabled -bool true

#Quit Printer App after Print Jobs complete:
# defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

#Icon Size for Open Panels:
# defaults write -g NSNavPanelIconViewIconSizeForOpenMode -number


#Show all filename extensions 
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true

#Dock相关配置
#关闭Mission Control的动画特效
defaults write com.apple.dock expose-animation-duration -int 0;killall Dock
#defaults delete com.apple.dock expose-animation-duration;killall Dock

#关闭Launchpad界面动画效果
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -int 0;killall Dock
#defaults delete com.apple.dock springboard-show-duration
#defaults delete com.apple.dock springboard-hide-duration;killall Dock

#Enable 2D Dock Mode
defaults write com.apple.dock no-glass -bool true

#更改 Launchpad 背景效果默认为清晰
defaults write com.apple.dock springboard-blur-radius -int 0;killall Dock
defaults write com.apple.dock springboard-page-duration -int 0;killall Dock
#defaults delete com.apple.dock springboard-page-duration;killall Dock

# Minimize Windows Into Their Application’s Icon
defaults write com.apple.dock minimize-to-application -bool true

#关闭Dock栏的动画效果
defaults write com.apple.dock autohide-time-moidifier -int 0;killall Dock
#defaults write com.apple.dock autohide-time-moidifier -int 0;killall Dock

###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Note: Be sure to run `killall Dock` for these settings to take effect

# Bottom left screen corner → Start screen saver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

#最小化效果缩放
defaults write com.apple.dock mineffect -string scale

#Disable Expose
defaults write com.apple.dock mcx-expose-disabled -bool true

#Show Only Active Applications
#defaults write com.apple.dock static-only -bool true

#Change the Maximum Magnification Level
defaults write com.apple.dock largesize -float 256

#Remove the Auto-Hide Dock Delay
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock

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
defaults write com.apple.dock showhidden -bool true

#Add a 'Recent Applications' stack to the Dock.
# defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'

#Stacks, Activate Mouse Over Gradient:
defaults write com.apple.dock mouse-over-hilte-stack -bool true

#调整休眠时间
#caffeinate -t 900

#Finder相关配置

#关闭快速查看的动画特效
defaults write com.apple.finder QLPanelAnimationDuration -int 0;killall Finder
#defaults delete com.apple.finder QLPanelAnimationDuration;killall Finder

#Enable Text Selection in Quick Look Windows
defaults write com.apple.finder QLEnableTextSelection -bool TRUE;killall Finder

#Show Hidden Files By Default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show the Status Bar, this can also be toggled on the View menu:
defaults write com.apple.finder ShowStatusBar -bool true

#Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

#Start the status bar Path at $HOME (instead of Hard drive)
#defaults write /Library/Preferences/com.apple.finder PathBarRootAtHome -bool

#Remove Icons For Hard Drives, Servers, And Removable Media On The Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

#Keep folders At Top When Sorting By Name.
defaults write com.apple.finder _FXSortFoldersFirst -bool true

#Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Automatically Open A New Finder Window When A Volume Is Mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Show path in Title Bar
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# New window points to home
defaults write com.apple.finder NewWindowTarget -string "PfHm"

# Set sidebar icon size to Small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

#Minimum size for playable previews:
# defaults write com.apple.finder QLInlinePreviewMinimumSupportedSize -integer

#Auto stop previews when scrolling:
defaults write com.apple.finder AutoStopWhenScrollingOffBounds -bool true

#Auto stop previews when selection changes:
defaults write com.apple.finder AutoStopWhenSelectionChanges -bool true

#CoverFlow background color:
defaults write com.apple.finder IKImageFlowBackgroundColor -bool false

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
defaults write com.apple.finder Desktop.HasDarkBackground -boolean true
#Show stripes in list views:
# defaults write com.apple.finder FXListViewStripes -boolean
#Allow quitting Finder, like any other app. doing so will also hide desktop icons. 
#This is only really useful with a 3rd party file manager: 
#defaults write com.apple.finder QuitMenuItem -bool YES; killall Finder

#Disable window animations and Get Info animations in Finder
defaults write com.apple.finder DisableAllAnimations -bool true

#Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

#Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

#Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

#Safari相关设置

#Enable dev menu
defaults write com.apple.safari IncludeDevelopMenu 1

#Enable debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDebugMenu -bool true

#Enable encoding detector:
defaults write com.apple.Safari WebKitUsesEncodingDetector -bool true

#Tooltip Font Size:
# defaults write com.apple.Safari NSToolTipsFontSize -float

# Re-enable backspace/delete to go back in Safari
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

#AddressBook相关设置
#Show Contact Reflection:
#$ defaults write com.apple.AddressBook reflection -boolean

#bbedit相关设置
#Use old style modal Find Dialog:
#$ defaults write com.barebones.bbedit FindDialog:UseOldSk00lFindDialog -boolean

#Dashboard launcher相关设置
#Drag widgets out of dashboard (devmode) 
defaults write com.apple.dashboard devmode -boolean true

#Dictionary相关设置
#Reuse dictionary definition window:
#$ defaults write com.apple.Dictionary ProhibitNewWindowForRequest -boolean

#DiskUtility相关设置
#Show hidden Partitions:
defaults write com.apple.DiskUtility DUShowEveryPartition -boolean true

#Disable the macOS Crash reporter (quit dialog after an application crash)
defaults write com.apple.CrashReporter DialogType none
#To enable the crash reporter (default) change none to prompt

#Disable dashboard widgets (saves RAM)
defaults write com.apple.dashboard mcx-disabled -boolean true
#To Enable dashboard widgets (default) set this to NO

#Enable Remote Disc (1)
# defaults write com.apple.NetworkBrowser EnableODiskBrowsing -boolean
#Enable Remote Disc (2)
#$ defaults write com.apple.NetworkBrowser ODSSupported -boolean

#Enable movie preview thumbnails:
defaults write com.apple.QuickLookDaemon QLDisableQTThumbnails -bool true
 
#Front Row launcher
#Set preferred display to use:
# defaults write com.apple.frontrow FrontRowUsePreferredDisplayID -integer

#iCal相关设置
#Log HTTP Activity:
#$ defaults write com.apple.iCal LogHTTPActivity -boolean

#iTunes相关设置
#Make the arrows next to artist & album jump to local iTunes library folders instead of Store:
defaults write com.apple.iTunes show-store-link-arrows -bool true
defaults write com.apple.iTunes invertStoreLinks -bool true

#To restore the default change the YES to NO
#Restore the standard close/minimise buttons:
#defaults write com.apple.iTunes full-window -1
#Hide the iTunes Genre list:
#defaults write com.apple.iTunes show-genre-when-browsing -bool FALSE

#Mail相关设置
#Close Apple Mail before making any changes.
#Set a minimum font size of 12px (affects reading and sending email):
defaults write com.apple.mail MinimumHTMLFontSize 12

#Force all Mail messages to display as plain text:
defaults write com.apple.mail PreferPlainText -bool true

#For rich text (the default) set it to FALSE
#Disable tracking of Previous Recipients:
# defaults write com.apple.mail SuppressAddressHistory -boolean

#Send Windows friendly attachments:
defaults write com.apple.mail SendWindowsFriendlyAttachments -bool true

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

#Preview相关设置
#Scale images by default when printing:
# defaults write write com.apple.Preview PVImagePrintingScaleMode -boolean
#Preview Auto-rotate by default when printing:
# defaults write write com.apple.Preview PVImagePrintingAutoRotate -boolean
#Quit Always Keeps Windows:
# defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -boolean

#Quick Time Player相关设置
#Automatically show Closed Captions (CC) when opening a Movie:
# defaults -currentHost write com.apple.QuickTimePlayerX.plist MGEnableCCAndSubtitlesOnOpen -boolean

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


#Spaces
#When switching applications, switch to respective space
defaults write -g AppleSpacesSwitchOnActivate -bool true

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

#Disable Focus Ring Animation
defaults write -globalDomain NSUseAnimatedFocusRing -bool NO

#Disable Spaces Animation
defaults write com.apple.dock workspaces-swoosh-animation-off -bool YES

#Terminal windows take focus with click (default)
#defaults write com.apple.terminal FocusFollowsMouse -string NO

#TextWrangler
#Camel Case Navigation:
#$ defaults write com.barebones.textwrangler Editor:ControlArrowCamelCase -bool

#TimeMachine相关设置
#Auto backup:
defaults write com.apple.TimeMachine AutoBackup -bool false
#Backup frequency default= 3600 seconds (every hour) 1800 = 1/2 hour, 7200=2 hours 
#sudo defaults write /System/Library/Launch Daemons/com.apple.backupd-auto StartInterval -int 1800

#X11 (2.4.0)相关设置
#Auto-quit on close last window (XQuartz) 
defaults write org.macosforge.xquartz.X11 wm_auto_quit -bool true

#Focus follows mouse (10.5.5 and up) (XQuartz) 
#defaults write org.macosforge.xquartz.X11 wm_ffm -boolean

# Save To Disk (not to iCloud) By Default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically Quit Printer App Once The Print Jobs Complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable The “Are You Sure You Want To Open This Application?” Dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Remove duplicates In The “Open With” Menu.
#/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

#screencapture相关设置
# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Chrome相关设置
# Disable swipe to to navigate
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE

# iTerm2相关设置
# Fix the scroll to top bug (where it jumps immediately back to bottom of screen)
# Be sure to restart iTerm2 after running this.
defaults write com.googlecode.iterm2 NSScrollAnimationEnabled -bool false

#com.apple.TextEdit

