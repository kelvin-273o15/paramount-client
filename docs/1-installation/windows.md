# Getting Started on Windows

## Installing Flutter on windows

for now follow this [official guide](https://docs.flutter.dev/get-started/install/windows)

## Install dart sdk using Scoop

We need a Windows package Manager to quickly Install dart

Please go to [scoop.sh](https://scoop.sh/) to install scoop in your system

Also the version of dart we need is [dart_version]

1. Install dart `scoop install dart`
1. If you already have dart but version is outdate run `scoop update dart`


## Install FVM

Install FVM using scoop with the command: `dart pub global activate fvm`

## Install Flutter Stable [flutter_version]

Install this flutter version using command: `fvm install` [flutter_version]

## Clone The Repo over SSH

run command: `git clone git@SSH_USERNAME.github.com:GITUSERNAME/REPO.git app`

Note: SSH_USERNAME is set up on ssh config, you can replace SSH_USERNAME base on your config

// ~/.ssh/config
```sh
Host SSH_USERNAME
    HostName github.com
    User git
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/id_rsa
```

Ensure your ssh pub key is uploaded on your github account and you are invited as collaborator on the project

## Use FVM with the [flutter_version]

run the command `fvm use` if prompted for options choose [flutter_version]

## Changing Flutter SDK Version

Note:You need to have dart and flutter vscode extension enable to do this, if you dont please install it first

1. Press `ctrl+shift+p` to trigger show all commands  then type `flutter change sdk` press enter then choose flutter version [flutter_version]

Note: if for some reason flutter sdk [flutter_version] is not listed we can create .vscode/settings.json with the following content

```json
{
    "dart.flutterSdkPath": "C:\\Users\\WINDOWS_USERNAME\\fvm\\versions\\3.7.7"
}
```

[flutter_version]: ../flutter_version.md
[dart_version]: ../dart_version.md
