# Paramount Client App

[![Codemagic build status](https://api.codemagic.io/apps/640a51e16d467a62ed0ba98b/640a51e16d467a62ed0ba98a/status_badge.svg)](https://codemagic.io/apps/640a51e16d467a62ed0ba98b/640a51e16d467a62ed0ba98a/latest_build)
![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![mobile](https://github.com/kelvin-273o15/paramount-client/actions/workflows/main.yaml/badge.svg)](https://github.com/kelvin-273o15/paramount-client/actions/workflows/main.yaml)


---

## Getting Started on Github Codespace

1. Create new [Github Codespace](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=611750319)

Note: choose `Region` closest to you and `Machine Type`

`2 core machine` would lasts `120` hrs for `FREE`

1. Install dependencies

 Press <kbd>CMD</kbd>+<kbd>SHIFT</kbd>+<kbd>P</kbd> then type "Tasks: Run Tasks" , then press <kbd>ENTER</kbd> , type `flutter pub get`

 Also if you get prompted to install plugins recommended just accept it , it would make your life easier.

1. generate .env

Press <kbd>CMD</kbd>+<kbd>SHIFT</kbd>+<kbd>P</kbd> then type "Tasks: Run Tasks" , then press <kbd>ENTER</kbd> , type `Generate Env File` or `flutter code watcher`

1. Update .env config as needed

```sh
APP_ENV=local
//! More TBA
```

1. Generate Code using build runner

Press <kbd>CMD</kbd>+<kbd>SHIFT</kbd>+<kbd>P</kbd> then type "Tasks: Run Tasks" , then press <kbd>ENTER</kbd> , type `flutter code generate` or `flutter code watcher`

1. run flutter

Press <kbd>CMD</kbd>+<kbd>SHIFT</kbd>+<kbd>P</kbd> then type "Tasks: Run Tasks" , then press <kbd>ENTER</kbd> , type `Launch on Web`

1. [Open Forwarded Port URL on Browser](https://docs.github.com/en/codespaces/developing-in-codespaces/forwarding-ports-in-your-codespace)




[coverage_badge]: coverage_badge.svg
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
