import 'package:flutter/material.dart';

import 'theme_modes.dart';
import 'ui_application_provider.dart';
import 'ui_application_theme_data.dart';

/// Injects [UIApplicationTheme] components and themes library and allow switch theme modes
/// Should invoke init() before runapp to initialize shared preferences
class UIApplication extends StatefulWidget {
  final Widget child;
  const UIApplication({required this.child, super.key});

  static Future<void> toggleThemeOf(BuildContext context) async {
    final _UIApplicationState? uiApplicationState = context.findAncestorStateOfType<_UIApplicationState>();

    if (uiApplicationState == null) {
      throw FlutterError(
        'UIApplication operation requested with a context that does not include a UIApplication.\n'
        'The context used to switch theme modes from the UIApplication must be that of a '
        'widget that is a descendant of a UIApplication widget.',
      );
    }

    await uiApplicationState.toggleTheme();
  }

  static Future<void> init() async {
    await UIApplicationProvider.init();
  }

  @override
  State<UIApplication> createState() => _UIApplicationState();
}

class _UIApplicationState extends State<UIApplication> {
  late UIApplicationThemeData data;

  @override
  void initState() {
    super.initState();
    data = UIApplicationProvider.getThemeMode().resolveTheme();
  }

  Future<void> toggleTheme() async {
    setState(() {
      data = data.map<UIApplicationThemeData>(
        light: (_) => const UIApplicationThemeData.dark(),
        dark: (_) => const UIApplicationThemeData.light(),
      );
    });
    await UIApplicationProvider.setTheme(data.mode);
  }

  @override
  Widget build(BuildContext context) => UIApplicationTheme(
        data: data,
        child: widget.child,
      );
}

/// Injects [UIApplicationTheme] components and themes library.
/// Use [UIApplication] to enable theme mode switch.
class UIApplicationTheme extends InheritedTheme {
  final UIApplicationThemeData data;

  const UIApplicationTheme({
    required this.data,
    required super.child,
    super.key,
  });

  static UIApplicationThemeData of(BuildContext context) {
    final UIApplicationTheme? uiApplicationTheme =
        context.dependOnInheritedWidgetOfExactType<UIApplicationTheme>();
    final UIApplicationThemeData? uiApplicationThemeData = uiApplicationTheme?.data;

    if (uiApplicationThemeData == null) {
      throw FlutterError(
        'UIApplicationTheme operation requested with a context that does not include a UIApplicationTheme.\n'
        'The context used to get theme from the UIApplicationTheme must be that of a '
        'widget that is a descendant of a UIApplication widget.',
      );
    }

    return uiApplicationThemeData;
  }

  @override
  bool updateShouldNotify(UIApplicationTheme oldWidget) => data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) =>
      UIApplicationTheme(data: data, child: child);
}
