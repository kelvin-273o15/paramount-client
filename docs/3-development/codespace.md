# Using Codespace for Android Development

> Find a way to connect to your device with adb...

- This is good if your on mac and you dont have extra resources to spin up an emulator and run android studio

## Requirements
- VSCode
- VSCode Extension Codespace
- adb (installed on your host machine/local mac/pc)

## Scoop Installer

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

## Install ADB

```
scoop install adb
```

Note: Adb is installed together with android studio or the android cli or with scoop

## Set Up Code Space Account on VSCODE
1. CMD + SHIFT + X on mac  or  CTRL + SHIFT + X on PC
1. search Remote - SSH  | Remote Containers | Github Codespace
1. Install the plugins listed
1. Click Remote Explorer Tab (Left Side bar)
1. Open Remote Explorer Drop Down and Select Github Codespace
1. Login to Github Codespace

## Usage

1. Go to [Github Codespace]( https://github.com/codespaces)
1. Click New Code Space Button
1. Choose watchcrunch fluttter repository
1. Open the code in vscode
1. Wait for it to finish provisioning the Github Codespace
1. CMD+SHIFT+P(mac) or CTRL+SHIFT+P(pc) then type `Dart: Change SDK` select current
1. CMD+SHIFT+P(mac) or CTRL+SHIFT+P(pc) then type `Flutter: Change SDK` select curent
1. CMD+SHIFT+P(mac) or CTRL+SHIFT+P(pc) then type `Pub: get packages`
1. CMD+SHIFT+P(mac) or CTRL+SHIFT+P(pc) then type `Task: Run`, choose `flutter code generate`

Note: all errors on terminal *`PROBLEMS tab`* should go away after you done this procedure

## Using with Android Device
1. Plug your device via USB
1. Connect to the device , open your host terminal
```
adb tcpip 5555
adb connect 192.168.100.143:5555
// note: the ip address here may vary
// or just run
adb usb
```

to check if you have correctly added the device

```sh
adb devices -l
```

1. On vscode terminal (remote) run  command
```sh
adb tcpip 5555
adb connect 192.168.100.143:5555
```

1. You will be prompted on your device to connect, accept it and remember the connection.

1. It should failed , for unauthorized access, we should run this command on vscode remote terminal

```
adb kill-server
```

1. Reconnect to the device

```sh
adb connect 192.168.100.143:5555
```

## Update your launch config

open file: `.vscode/launch.json`

```json
{
      "name": "Android: Debug",
      "request": "launch",
      "type": "dart",
      // Change this Device Id with your device IP and port connection
      "deviceId": "192.168.100.143:5555",
      "flutterMode": "debug"
},
```

## Generate Keystore
> Since our App is being deployed on production it will error out without an upload-keystore.jks

To generate: it go to your vscode terminal and run
```
  keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

## create key.properties  on android folder

```
storePassword=android
keyPassword=android
keyAlias=upload
storeFile=/root/upload-keystore.jks
```

## Install Expose
https://github.com/uriah-we/expose-flutter

## Change .env.dart and update URL

open `lib/env.dart` and update it using your expose url

```
static const String apiUrl = String.fromEnvironment('API_URL',
      defaultValue: 'https://watchcrunch.sharedwithexpose.com');

static const String apiDomain = String.fromEnvironment('API_DOMAIN',
      defaultValue: 'https://watchcrunch.sharedwithexpose.com');
```

## Run Flutter

1. Go to Run and Debug (leftside bar)
1. Choose `Android: Debug`
1. Click The Play Button
