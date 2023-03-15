# Note This set up would only work on MACOS

# MacOS Setup
- This workflow is done to address the limitation of macbook air 8GB ram

## Update Path

~/.zshenv

add sdkroot, and make ruby gems non sudo so we dont face any issue on cli

```
export SDKROOT=$(xcrun -sdk macosx --show-sdk-path)
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
export PATH="$PATH":"$HOME/.gem/ruby/2.6.0/bin"
```

## Set Xcode Commandline tools
https://stackoverflow.com/questions/72160143/xcode-build-fail-requested-but-did-not-find-extension-point#72403528


## install cocoapods non sudo
```
gem install cocoapods --user-install
gem which cocoapods
```

## Install ffi for M1
```
sudo gem uninstall ffi
gem install ffi -- --enable-libffi-alloc
```

## Enable Remote Login on your Mac
1. Go to your System Preferences
1. Type remote login
1. check allow full disk access for remote users
1. Click Plus Icon and add the user

## Getting Ip address on your Mac in your Wireless Network

on mac check for macos ip using `ifconfig`

## Plug Iphone on your macbook Air using usb type C

## check if the device is available
flutter devices

# Windows Setup
Requirements:
- Remote SSH plugin on vscode

## Remote SSH configuration on VSCODe
1. ctrl+shift+P
1. Remote-SSH Add new SSH Host
1. ssh uriah@192.168.1.4

uriah(my user on macos that I added for remote login , if that started with capital letter ignore the capital and use lowercase)

Note: you need to login with your MacOS user password if prompted

## Remote SSH from your windows to your MacOS machine
Rmote-SSH Connect to Host
Choose your Host
Select Platform (Macos) (Important)
Type in your user on Mac password

## Open Project Folder
on the dashboard of vscode , Open Folder
Search or type the path of your Project
and then Press OK
i.e. /Users/uriah/Code/Flutter/watchcrunch

## Connect your Android device on a Usb
adb devices (check if device is detected if not we need to do the following)

- first we need to run the following commands on windows laptop
adb tcpip 5555
adb connect 192.168.1.6:5555

(note to know what ip address to connect please use an app called ADB Wireless by Henry)

once we are connected on windows side of things
check it first on a windows terminal

adb devices -l

we need to connect this device on our macOS

we can either use the terminal from SSH: Macbook Air ie.
and run command

adb connect 192.168.1.6:5555



## Unlock Keyring via VSCode Remote SSH on windows
https://github.com/Dart-Code/Dart-Code/issues/3372#issuecomment-857273044

run:
```
security unlock-keychain
```