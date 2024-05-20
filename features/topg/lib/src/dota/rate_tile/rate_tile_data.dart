import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_tile_data.freezed.dart';

@freezed
class RateTileData with _$RateTileData {
  const factory RateTileData({
    required EdgeInsetsGeometry contentPadding,
    required double horizontalTitleGap,
    required TextStyle titleStyle,
    required TextStyle rateStyle,
    Color? splashColor,
  }) = _RateTileData;

  const factory RateTileData.defaultValue({
    @Default(EdgeInsets.symmetric(horizontal: 4))
    EdgeInsetsGeometry contentPadding,
    @Default(8) double horizontalTitleGap,
    @Default(TextStyle(fontSize: 12)) TextStyle titleStyle,
    @Default(TextStyle(fontSize: 14)) TextStyle rateStyle,
    @Default(Colors.transparent) Color? splashColor,
  }) = _DefaultRateTileData;
}
