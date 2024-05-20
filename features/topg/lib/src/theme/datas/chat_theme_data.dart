import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../topg.dart';

part 'chat_theme_data.freezed.dart';

@freezed
class ChatThemeData with _$ChatThemeData {
  const factory ChatThemeData.light({
    @Default(TopGColors.blueCrayola) Color authorColor,
    @Default(TopGGradients.evenSoftLightBlue)
    Gradient ilMessageBackgroundGradient,
    @Default(TopGGradients.crayolaFrench) Gradient youMessageBackgroundGradient,
    @Default(TopGColors.quickSilver) Color ilTimeColor,
    @Default(TopGColors.softLightBlue) Color youTimeColor,
    @Default(TopGColors.blueCrayola) Color buttonActiveColor,
    @Default(TopGColors.quickSilver) Color buttonDisabledColor,
    @Default(TopGColors.softLightBlue) Color splashColor,
    @Default(TopGColors.quickSilver) Color shadowColor,
  }) = _ChatThemeDataLight;

  const factory ChatThemeData.dark({
    @Default(TopGColors.blueCrayola) Color authorColor,
    @Default(TopGGradients.evenSoftDarkBlue)
    Gradient ilMessageBackgroundGradient,
    @Default(TopGGradients.crayolaFrench) Gradient youMessageBackgroundGradient,
    @Default(TopGColors.quickSilver) Color ilTimeColor,
    @Default(TopGColors.softLightBlue) Color youTimeColor,
    @Default(TopGColors.blueCrayola) Color buttonActiveColor,
    @Default(TopGColors.quickSilver) Color buttonDisabledColor,
    @Default(TopGColors.softDarkBlue) Color splashColor,
    @Default(TopGColors.eerieBlack) Color shadowColor,
  }) = _ChatThemeDataDark;
}
