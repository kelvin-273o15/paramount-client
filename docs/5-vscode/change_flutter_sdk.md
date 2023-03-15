# Change/Set UP Flutter SDK
Using FVM Ensures we are running our project on the exact version of dart and flutter.

## Requirements (Install if not present in your system)
- [fvm](https://fvm.app/docs/getting_started/installation)
- [dart sdk](https://dart.dev/get-dart)

## How to use FVM
1. run command `cd PROJECT_FOLDER`
1. run command `fvm install` [flutter_version]
1. run command `fvm use` if prompted to choose version select [flutter_version]

if there is no flutter version to choose on please install one run `fvm install` [flutter_version]

1. Open your project in Vscode with command `code .` assuming your on your Project Folder

1.  check if  .vscode  folder exists
  - run command `mkdir .vscode` (if it does not exist create it) or simple create it on vs code.

1. open settings.json  or create it if it does not exists

1. press `ctrl + shift + p` on windows or `cmd + shift + p ` on mac then type `flutter change sdk` select 2.10.3

1. Your settings.json should have something like this...
```json
{
  "dart.flutterSdkPath": "/Users/USERNAME/fvm/versions/X.Y.Z"
}
```
[flutter_version]: ../flutter_version.md
[dart_version]: ../dart_version.md