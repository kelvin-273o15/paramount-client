# On Android App

If you are getting this error when installing from shared link

`"You cannot install this app because another user has already installed an incompatible version on this device"`

you need to uninstall it using adb

`adb shell pm uninstall com.example.app` (replace the com.example.app with your bundle identifier)

Note: this will only happen if your device has the debug version when you are developing the app

# On iOS

Be sure to get TestFlight App on the AppStore
you will be given a redeem code via email

you need to type the redeem code on the input field
to show the app your invited to test on close beta