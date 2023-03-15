## Using Build Runner for Envied

> Using Envied makes our ENV secure on production

1. go to your project folder run command `cd PROJECT_FOLDER`

1. create .env or copy .env.example with command `cp .env.example .env`

// .env.example

```sh
APP_ENV=local
APP_NAME=PARAMOUNT
APP_DOMAIN=paramountpetroleum.ph
APP_URL=https://paramountpetroleum.ph
// Add as you needed all the ENV VAR
```

1. run `flutter pub run build_runner watch` to generate the `env.g.dart` needed by our app
