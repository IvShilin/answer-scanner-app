// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dota_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DotaThemeData {
  RateTileData get rateTileData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RateTileData rateTileData) light,
    required TResult Function(RateTileData rateTileData) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RateTileData rateTileData)? light,
    TResult? Function(RateTileData rateTileData)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RateTileData rateTileData)? light,
    TResult Function(RateTileData rateTileData)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DotaThemeDataLight value) light,
    required TResult Function(_DotaThemeDataDark value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DotaThemeDataLight value)? light,
    TResult? Function(_DotaThemeDataDark value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DotaThemeDataLight value)? light,
    TResult Function(_DotaThemeDataDark value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DotaThemeDataCopyWith<DotaThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DotaThemeDataCopyWith<$Res> {
  factory $DotaThemeDataCopyWith(
          DotaThemeData value, $Res Function(DotaThemeData) then) =
      _$DotaThemeDataCopyWithImpl<$Res, DotaThemeData>;
  @useResult
  $Res call({RateTileData rateTileData});

  $RateTileDataCopyWith<$Res> get rateTileData;
}

/// @nodoc
class _$DotaThemeDataCopyWithImpl<$Res, $Val extends DotaThemeData>
    implements $DotaThemeDataCopyWith<$Res> {
  _$DotaThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateTileData = null,
  }) {
    return _then(_value.copyWith(
      rateTileData: null == rateTileData
          ? _value.rateTileData
          : rateTileData // ignore: cast_nullable_to_non_nullable
              as RateTileData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RateTileDataCopyWith<$Res> get rateTileData {
    return $RateTileDataCopyWith<$Res>(_value.rateTileData, (value) {
      return _then(_value.copyWith(rateTileData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DotaThemeDataLightImplCopyWith<$Res>
    implements $DotaThemeDataCopyWith<$Res> {
  factory _$$DotaThemeDataLightImplCopyWith(_$DotaThemeDataLightImpl value,
          $Res Function(_$DotaThemeDataLightImpl) then) =
      __$$DotaThemeDataLightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RateTileData rateTileData});

  @override
  $RateTileDataCopyWith<$Res> get rateTileData;
}

/// @nodoc
class __$$DotaThemeDataLightImplCopyWithImpl<$Res>
    extends _$DotaThemeDataCopyWithImpl<$Res, _$DotaThemeDataLightImpl>
    implements _$$DotaThemeDataLightImplCopyWith<$Res> {
  __$$DotaThemeDataLightImplCopyWithImpl(_$DotaThemeDataLightImpl _value,
      $Res Function(_$DotaThemeDataLightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateTileData = null,
  }) {
    return _then(_$DotaThemeDataLightImpl(
      rateTileData: null == rateTileData
          ? _value.rateTileData
          : rateTileData // ignore: cast_nullable_to_non_nullable
              as RateTileData,
    ));
  }
}

/// @nodoc

class _$DotaThemeDataLightImpl implements _DotaThemeDataLight {
  const _$DotaThemeDataLightImpl(
      {this.rateTileData = const RateTileData.defaultValue()});

  @override
  @JsonKey()
  final RateTileData rateTileData;

  @override
  String toString() {
    return 'DotaThemeData.light(rateTileData: $rateTileData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DotaThemeDataLightImpl &&
            (identical(other.rateTileData, rateTileData) ||
                other.rateTileData == rateTileData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rateTileData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DotaThemeDataLightImplCopyWith<_$DotaThemeDataLightImpl> get copyWith =>
      __$$DotaThemeDataLightImplCopyWithImpl<_$DotaThemeDataLightImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RateTileData rateTileData) light,
    required TResult Function(RateTileData rateTileData) dark,
  }) {
    return light(rateTileData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RateTileData rateTileData)? light,
    TResult? Function(RateTileData rateTileData)? dark,
  }) {
    return light?.call(rateTileData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RateTileData rateTileData)? light,
    TResult Function(RateTileData rateTileData)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(rateTileData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DotaThemeDataLight value) light,
    required TResult Function(_DotaThemeDataDark value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DotaThemeDataLight value)? light,
    TResult? Function(_DotaThemeDataDark value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DotaThemeDataLight value)? light,
    TResult Function(_DotaThemeDataDark value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class _DotaThemeDataLight implements DotaThemeData {
  const factory _DotaThemeDataLight({final RateTileData rateTileData}) =
      _$DotaThemeDataLightImpl;

  @override
  RateTileData get rateTileData;
  @override
  @JsonKey(ignore: true)
  _$$DotaThemeDataLightImplCopyWith<_$DotaThemeDataLightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DotaThemeDataDarkImplCopyWith<$Res>
    implements $DotaThemeDataCopyWith<$Res> {
  factory _$$DotaThemeDataDarkImplCopyWith(_$DotaThemeDataDarkImpl value,
          $Res Function(_$DotaThemeDataDarkImpl) then) =
      __$$DotaThemeDataDarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RateTileData rateTileData});

  @override
  $RateTileDataCopyWith<$Res> get rateTileData;
}

/// @nodoc
class __$$DotaThemeDataDarkImplCopyWithImpl<$Res>
    extends _$DotaThemeDataCopyWithImpl<$Res, _$DotaThemeDataDarkImpl>
    implements _$$DotaThemeDataDarkImplCopyWith<$Res> {
  __$$DotaThemeDataDarkImplCopyWithImpl(_$DotaThemeDataDarkImpl _value,
      $Res Function(_$DotaThemeDataDarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateTileData = null,
  }) {
    return _then(_$DotaThemeDataDarkImpl(
      rateTileData: null == rateTileData
          ? _value.rateTileData
          : rateTileData // ignore: cast_nullable_to_non_nullable
              as RateTileData,
    ));
  }
}

/// @nodoc

class _$DotaThemeDataDarkImpl implements _DotaThemeDataDark {
  const _$DotaThemeDataDarkImpl(
      {this.rateTileData = const RateTileData.defaultValue()});

  @override
  @JsonKey()
  final RateTileData rateTileData;

  @override
  String toString() {
    return 'DotaThemeData.dark(rateTileData: $rateTileData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DotaThemeDataDarkImpl &&
            (identical(other.rateTileData, rateTileData) ||
                other.rateTileData == rateTileData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rateTileData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DotaThemeDataDarkImplCopyWith<_$DotaThemeDataDarkImpl> get copyWith =>
      __$$DotaThemeDataDarkImplCopyWithImpl<_$DotaThemeDataDarkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RateTileData rateTileData) light,
    required TResult Function(RateTileData rateTileData) dark,
  }) {
    return dark(rateTileData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RateTileData rateTileData)? light,
    TResult? Function(RateTileData rateTileData)? dark,
  }) {
    return dark?.call(rateTileData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RateTileData rateTileData)? light,
    TResult Function(RateTileData rateTileData)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(rateTileData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DotaThemeDataLight value) light,
    required TResult Function(_DotaThemeDataDark value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DotaThemeDataLight value)? light,
    TResult? Function(_DotaThemeDataDark value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DotaThemeDataLight value)? light,
    TResult Function(_DotaThemeDataDark value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class _DotaThemeDataDark implements DotaThemeData {
  const factory _DotaThemeDataDark({final RateTileData rateTileData}) =
      _$DotaThemeDataDarkImpl;

  @override
  RateTileData get rateTileData;
  @override
  @JsonKey(ignore: true)
  _$$DotaThemeDataDarkImplCopyWith<_$DotaThemeDataDarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
