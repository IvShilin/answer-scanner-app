import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../topg.dart';

part 'settings_theme_data.freezed.dart';

@freezed
class SettingsThemeData with _$SettingsThemeData {
  const factory SettingsThemeData.light({
    @Default(TopGColors.quickSilver) Color buttonColor,
    @Default(TopGColors.blueCrayola) Color blockTitleColor,
    @Default(TopGColors.white) Color blockColor,
    @Default(TopGColors.quickSilver) Color iconColor,
    @Default(TopGColors.white) Color backgroundColor,
    @Default(TopGColors.quickSilver) Color dividerColor,
  }) = _SettingsThemeDataLight;

  const factory SettingsThemeData.dark({
    @Default(TopGColors.quickSilver) Color buttonColor,
    @Default(TopGColors.blueCrayola) Color blockTitleColor,
    @Default(TopGColors.eerieBlack) Color blockColor,
    @Default(TopGColors.quickSilver) Color iconColor,
    @Default(TopGColors.eerieBlack) Color backgroundColor,
    @Default(TopGColors.quickSilver) Color dividerColor,
  }) = _SettingsThemeDataDark;
}
