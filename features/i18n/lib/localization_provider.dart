import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 's.dart';

/// [LocalizationProvider] sholud call init() before runApp to first time initialize shared preferences
class LocalizationProvider {
  LocalizationProvider._();

  static final LocalizationProvider instance = LocalizationProvider._();
  static const _key = 'locale';
  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Locale getLocale() {
    final languageCode = _sharedPreferences?.getString(_key);
    final locale =
        languageCode != null ? Locale(languageCode) : S.defaultLocale;
    return locale;
  }

  static Future<void> setLocale(Locale locale) async {
    await _sharedPreferences?.setString(_key, locale.languageCode);
  }
}
