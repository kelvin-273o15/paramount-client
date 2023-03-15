# Getting Started On Mac OS

## Install dart with brew

If you don't have brew installed , please refer to the guide on [brew.sh](http://brew.sh)

run command: `brew install dart`

Note: dart is added to path automatically by homebrew

## Update Path (if you have issue with command not found)

Edit your .zshrc or .zshenv

```
// if you want to use dart that comes with FVM
export PATH="$PATH:$HOME/fvm/default/bin"
// Note: this is needed for you to use FVM or GetX Cli
export PATH="$HOME/.pub-cache/bin":"$PATH"
```

## Install FVM

> preferred way to install

```
brew tap leoafarias/fvm
brew install fvm
```

or you can still this with
`dart pub global activate fvm`

## Install Flutter stable [flutter_version]

Install this flutter version using command: `fvm install` [flutter_version]

## Clone The Repo over SSH

run command: `git clone git@SSH_USERNAME.github.com:USERNAME/REPO.git app`

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

Note:You need to have dart and flutter vscode extension enable to do this, if you don't please install it first

1. Press `cmd+shift+p` to trigger show all commands  then type `flutter change sdk` press enter then choose flutter version [flutter_version]

Note: if for some reason flutter sdk [flutter_version] is not listed we can create .vscode/settings.json with the following content

```json
{
  "dart.flutterSdkPath": "/Users/MAC_USERNAME/fvm/versions/3.7.7"
}
```

Please change the path accordingly to your User path , don't use mine :)


[flutter_version]: ../flutter_version.md

