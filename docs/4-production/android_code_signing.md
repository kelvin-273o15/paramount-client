# Android Code Signing
https://docs.codemagic.io/flutter-code-signing/android-code-signing/
https://docs.flutter.dev/deployment/android

- Prior Development We only use debug.store key
this file is located usually at `/Users/uriah/.android/debug.keystore`

# Code Signing for Production
> Note: there are two types of keys the one we will generate here is the upload Key this is used when uploading to Google PlayStore

Important: Save the Key to a safe location

```
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload -storetype JKS
```
Note: -alias `upload` can be of any name but for naming convention it is usually `upload`

# Create new File
`${PROJECT_FOLDER}`/`android/key.properties`
```
storePassword=ENTER_STORE_PASSWORD_HERE
keyPassword=ENTER_KEY_PASSWORD_HERE
keyAlias=upload
storeFile=/Users/YOUR_USERNAME/upload-keystore.jks
```

> In event you have many keystore file and your CI/CD is failing, the SHA1 hash will be shown on error to check the key SHA1

```
keytool -list -v -keystore upload-keystore.jks -alias upload
// type password when prompted
```

output to verify and compare with the one on CodeMagic
```
Certificate fingerprints:
SHA1: 34:43:2F:37:47:81:EB:08:2A:A6:A0:D9:E7:A6:CF:C2:99:2F:AF:3A
```

Note: on version java greater than 8 we add -storetype JKS

on older version 8 < Java
add this on .zshenv or .zprofile
```
export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'
// on later version we can remove this. or set to
export JAVA_OPTS=''
```

The Other Key is the Deployment Key , which is manage Automatically By Google Playstore

# Set up google playstore App Integrity
https://play.google.com/console/u/0/developers/7837413832112254698/app/4975634839018326405/keymanagement?tab=appSigning

1. either create a new Google Cloud Project  or in case you already have select it and link it

Note google has its own signing key, but still we need our keystore we generated to be uploaded
at appSigning section

2. Upload Keystore on AppSigning page on Google App Integrity Section

WARNING: if you lost your Upload key contact support on google, since the uploading of keystore is onetime process