#!/bin/bash
#sudo mdutil -a -i off
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
