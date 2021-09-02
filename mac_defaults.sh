defaults write com.apple.dock tilesize -int 65
defaults write com.apple.dock magnification -bool false
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.5
defaults write -g PMPrintingExpandedStateForPrint -bool true
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.dock ResetLaunchPad -bool true
defaults write com.apple.TextEdit NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock "mineffect" -string "suck"
defaults write com.apple.screencapture "disable-shadow" -bool "true"
defaults write com.apple.TextEdit "RichText" -bool "false" && killall TextEdit
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write -g AppleReduceDesktopTinting -bool true

defaults write com.apple.dock wvous-tl-corner -int 4
defaults write com.apple.dock wvous-tl-modifier -int 0
defaults write com.apple.dock wvous-tr-corner -int 12
defaults write com.apple.dock wvous-tr-modifier -int 0
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "MESSAGE HERE"

killall Dock
