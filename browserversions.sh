#!/bin/bash

# Based on script by @mm2270 on jamfnation
# Looks for browsers, then lists versions from Info.plist in a cocoaDialog window
# Designed for use in Self Service in the Casper Suite
# Modified by Emily K. 2014-11-12

# Get browser version info
theChrome=$(defaults read "/Applications/Google Chrome.app/Contents/Info" CFBundleShortVersionString)
theFox=$(defaults read "/Applications/Firefox.app/Contents/Info" CFBundleShortVersionString)
theSafari=$(defaults read "/Applications/Safari.app/Contents/Info" CFBundleShortVersionString)
Silverlight=$(defaults read "/Library/Internet Plug-ins/Silverlight.plugin/Contents/Info" CFBundleShortVersionString)


/path/to/cocoaDialog.app/Contents/MacOS/cocoaDialog msgbox \
--title "" --text "Your Browser Versions" \
--informative-text "Your Firefox version is: $theFox
Your Chrome version is: $theChrome
Your Safari version is: $theSafari
Your Silverlight version is: $Silverlight" --button1 "OK" --quiet
