# WSL Ubuntu

## Installation
This is a quick way to Set up dev machine for Android Development

1. Open Windows WSL

```
wsl
```

1. Git Clone the repo

```sh
git clone git@SSH_USESRNAME.github.com:GITUSERNAME/REPO.git app
```

1. open App folder in vscode , press CMD/CTRL + SHIFT + P  then type `Open Folder in Container`

1. Wait for it to finish Setting Up


## Usage

1. Install Dependencies press CMD/CTRL + SHIFT + P then type `flutter pub get`

1. Run Build Runner press CMD/CTRL + SHIFT + P then type `Task Run` then select `flutter code watcher`

1. Run Dev Container , press F5 and choose `Codespace Debug(Android)` (note this will not work on first time)


## Using With Device

1. On your host make sure you add your device

open your HOST terminal, and run commands

```
adb usb
adb tcpip 5555
adb connect 192.168.100.143
```

1. On Dev Container , open terminal and type

```sh
adb connect 192.168.100.143:5555
```

if you face Anauthorized Error, Assuming you done step 2
run this command

```
adb kill-server
```

and re-connect to the device

```
adb connect 192.168.100.143:5555
```
