import 'ui_application_theme_data.dart';

enum UIApplicationMode { light, dark }

extension UIApplicationModeX on UIApplicationMode {
  UIApplicationMode get deagault => UIApplicationMode.light;

  UIApplicationThemeData resolveTheme() {
    switch (this) {
      case UIApplicationMode.light:
        return const UIApplicationThemeData.light();
      case UIApplicationMode.dark:
        return const UIApplicationThemeData.dark();
    }
  }

  static UIApplicationMode resolveString(String? themeMode) {
    switch (themeMode) {
      case 'UIApplicationMode.light':
        return UIApplicationMode.light;
      case 'UIApplicationMode.dark':
        return UIApplicationMode.dark;
      default:
        return UIApplicationMode.light;
    }
  }
}
