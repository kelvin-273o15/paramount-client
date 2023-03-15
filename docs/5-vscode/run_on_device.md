## Running Flutter on Device/Emulators

## Instructions
1. cd to YOU_PROJECT
1. cd .vscode
1. code `launch.json` or vim `launch.json` (depends on what text editor you use)
1. update device ID

List your emulators with `flutter emulators`

### On MacOS
- run `open -a Simulator`
- run command `flutter devices`
- copy the device ID
```json
{
      "name": "iPhone: Debug",
      "request": "launch",
      "type": "dart",
      "deviceId": "", // <-- paste device ID here
      "flutterMode": "debug"
},
```
### On Windows
- run `flutter emulators --launch {emulator_id}`
- run command `flutter devices`
- copy the device ID
```json
{
      "name": "Android: Profile",
      "request": "launch",
      "type": "dart",
      "deviceId": "", //<-- paste device ID here
      "flutterMode": "profile"
},
```

1. Go to Run  and Debug on vscode
you can see a drop down list like Dart Run All Test, Iphone: Debug, Android Debug

1. Run The Task i.e. `Run All Unit Tests with Coverage`
