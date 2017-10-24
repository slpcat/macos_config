#!/bin/sh
#关闭窗口和对话框弹出的动画特效
defaults write -g NSAutomaticWindowAnimationEnabled -bool FALSE
#defaults delete -g NSAutomaticWindowAnimationEnabled
#关闭快速查看的动画特效
defaults write com.apple.finder QLPanelAnimationDuration -int 0;killall Finder
#defaults delete com.apple.finder QLPanelAnimationDuration;killall Finder
#关闭Mission Control的动画特效
defaults write com.apple.dock expose-animation -duration -int 0;killall Dock
#defaults delete com.apple.dock expose-animation -duration;killall Dock
#关闭文件保存和打印对话框的动画效果
defaults write -g NSWindowResizeTime -float 0.01
#defaults delete -g NSWindowResizeTime
#关闭Launchpad界面动画效果
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -int 0;killall Dock
#defaults delete com.apple.dock springboard-show-duration
#defaults delete com.apple.dock springboard-hide-duration;killall Dock
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

