import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'flutter_gen/gen_l10n/app_localizations.dart';

export 'flutter_gen/gen_l10n/app_localizations.dart';

class S {
  static const defaultLocale = en;

  static const en = Locale('en');
  static const ru = Locale('ru');

  static bool isEn(Locale locale) => locale == en;

  static const supportedLocales = [en, ru];

  static const List<LocalizationsDelegate> localizationDelegates = [
    AppLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context);
}
