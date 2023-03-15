# [App Build Versioning](https://docs.codemagic.io/configuration/build-versioning/) on TestFlight

## Using `appstore-connect` to retrieve latest build number

App Store Connect need Apple App Id
this is usually at the link when you view the app on App Store Connect Page
the Apple App Id is `1629402266`
ie: `https://appstoreconnect.apple.com/apps/1629402266/appstore/ios/version/inflight`

or located at General -> App Information
`https://appstoreconnect.apple.com/apps/1629402266/appstore/info`

shown in page:

```
Apple ID
1629402266
```


this is required on command  attach at  Pre-build script on Code Magic

Pre-build script:
```
// this script is used for app-store-build
LATEST_BUILD_NUMBER=$(app-store-connect get-latest-app-store-build-number '1629402266')
// this script is used for test-flight-build
LATEST_BUILD_NUMBER=$(app-store-connect get-latest-testflight-build-number '1629402266')

cd $CM_BUILD_DIR/ios

agvtool new-version -all $(($LATEST_BUILD_NUMBER + 1))
```

## Using `google-play` to retrieve latest build number from google playstore

On Local: make sure you have google-play cli set up
also the GCLOUD_SERVICE_ACCOUNT_CREDENTIALS , must be set on .zshenv or .zprofile or .zshrc or .profile

```
export GCLOUD_SERVICE_ACCOUNT_CREDENTIALS=`cat /Users/uriah/.config/appstore-connect/play-integrity-kgxfuo0pwpm6mkb-54112fd2ad11.json`
```

this would allow you to invoke google-play cli

Note: you need to add the script below on `flutter build appbundle --release`

on codemagic you don't need to add the command of flutter just this command will do

```
--build-number=$(($(google-play get-latest-build-number --package-name 'com.example.app') + 1))
```

note: replace com.example.app with your app bundle identifier

# PRODUCTION
We will use Git and Code Magic to Version our App
https://docs.codemagic.io/knowledge-base/add-a-git-tag-with-app-version/