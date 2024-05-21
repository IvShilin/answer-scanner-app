import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../ui_application.dart';

part 'settings_theme_data.freezed.dart';

@freezed
class SettingsThemeData with _$SettingsThemeData {
  const factory SettingsThemeData.light({
    @Default(UIApplicationColors.quickSilver) Color buttonColor,
    @Default(UIApplicationColors.blueCrayola) Color blockTitleColor,
    @Default(UIApplicationColors.white) Color blockColor,
    @Default(UIApplicationColors.quickSilver) Color iconColor,
    @Default(UIApplicationColors.white) Color backgroundColor,
    @Default(UIApplicationColors.quickSilver) Color dividerColor,
  }) = _SettingsThemeDataLight;

  const factory SettingsThemeData.dark({
    @Default(UIApplicationColors.quickSilver) Color buttonColor,
    @Default(UIApplicationColors.blueCrayola) Color blockTitleColor,
    @Default(UIApplicationColors.eerieBlack) Color blockColor,
    @Default(UIApplicationColors.quickSilver) Color iconColor,
    @Default(UIApplicationColors.eerieBlack) Color backgroundColor,
    @Default(UIApplicationColors.quickSilver) Color dividerColor,
  }) = _SettingsThemeDataDark;
}
