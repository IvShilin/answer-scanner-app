import 'package:flutter/material.dart';

import 'localization_provider.dart';
import 's.dart';

class ScarlettLocalization extends StatefulWidget {
  final Widget Function(Locale locale) builder;
  const ScarlettLocalization({required this.builder, super.key});

  static Future<void> switchLocaleOf(BuildContext context) async {
    final _ScarlettLocalizationState? localizationState =
        context.findAncestorStateOfType<_ScarlettLocalizationState>();

    if (localizationState == null) {
      throw FlutterError(
        'ScarlettLocalization operation requested with a context that does not include a ScarlettLocalization.\n'
        'The context used to switch theme modes from the ScarlettLocalization must be that of a '
        'widget that is a descendant of a TopG widget.',
      );
    }

    await localizationState.switchLocale();
  }

  static Future<void> init() async {
    await LocalizationProvider.init();
  }

  @override
  State<ScarlettLocalization> createState() => _ScarlettLocalizationState();
}

class _ScarlettLocalizationState extends State<ScarlettLocalization> {
  late Locale _locale;

  @override
  void initState() {
    super.initState();
    _locale = LocalizationProvider.getLocale();
  }

  Future<void> switchLocale() async {
    final newLocale = S.isEn(_locale) ? S.ru : S.en;
    setState(() {
      _locale = newLocale;
    });
    await LocalizationProvider.setLocale(newLocale);
  }

  @override
  Widget build(BuildContext context) => widget.builder(_locale);
}
