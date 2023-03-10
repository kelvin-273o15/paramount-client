import 'package:envied/envied.dart';

part 'env.g.dart';

/// to overrided .env file path use `path` parameter
///
/// `varName` is defined in the `.env` file
/// ie: `APP_ENV=local`
/// and uses `SCREAMING_SNAKE_CASE` naming convention
///
/// defaultValue can be used to set a default value if the variable is not found
///
/// defining a variable as `static const` will generate a getter
/// naming convention is camelCase for the variable name `appEnv`
@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'APP_ENV')
  @EnviedField(defaultValue: 'local')
  static const appEnv = _Env.appEnv;
}
