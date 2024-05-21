import 'package:shared_preferences/shared_preferences.dart';

import 'theme_modes.dart';

class UIApplicationProvider {
  UIApplicationProvider._();
  static const _key = 'theme_mode';

  static final instance = UIApplicationProvider._();
  static SharedPreferences? _sharedPreferences;
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static UIApplicationMode getThemeMode() {
    final stringThemeMode = _sharedPreferences?.getString(_key);
    final newMode = UIApplicationModeX.resolveString(stringThemeMode);
    return newMode;
  }

  static Future<void> setTheme(UIApplicationMode themeMode) async {
    await _sharedPreferences?.setString(_key, themeMode.toString());
  }
}
