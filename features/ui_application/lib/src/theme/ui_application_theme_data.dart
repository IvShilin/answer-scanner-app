import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants/constants.dart';
import '../datas/settings_theme_data.dart';
import 'theme_modes.dart';

part 'ui_application_theme_data.freezed.dart';

@freezed
class UIApplicationThemeData with _$UIApplicationThemeData {
  const factory UIApplicationThemeData.light({
    @Default(UIApplicationMode.light) UIApplicationMode mode,
    @Default(UIApplicationColorScheme.light) ColorScheme colorScheme,
    @Default(SettingsThemeData.light()) SettingsThemeData settings,
  }) = _UIApplicationThemeDataLight;

  const factory UIApplicationThemeData.dark({
    @Default(UIApplicationMode.dark) UIApplicationMode mode,
    @Default(UIApplicationColorScheme.dark) ColorScheme colorScheme,
    @Default(SettingsThemeData.dark()) SettingsThemeData settings,
  }) = _UIApplicationThemeDataDark;
}
