import 'package:freezed_annotation/freezed_annotation.dart';

import '../../dota/rate_tile/rate_tile_data.dart';

part 'dota_theme_data.freezed.dart';

@freezed
class DotaThemeData with _$DotaThemeData {
  const factory DotaThemeData.light({
    @Default(RateTileData.defaultValue()) RateTileData rateTileData,
  }) = _DotaThemeDataLight;
  const factory DotaThemeData.dark({
    @Default(RateTileData.defaultValue()) RateTileData rateTileData,
  }) = _DotaThemeDataDark;
}
