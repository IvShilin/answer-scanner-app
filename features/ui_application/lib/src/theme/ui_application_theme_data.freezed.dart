// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_application_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UIApplicationThemeData {
  UIApplicationMode get mode => throw _privateConstructorUsedError;
  ColorScheme get colorScheme => throw _privateConstructorUsedError;
  SettingsThemeData get settings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)
        light,
    required TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)
        dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        light,
    TResult? Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        light,
    TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UIApplicationThemeDataLight value) light,
    required TResult Function(_UIApplicationThemeDataDark value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UIApplicationThemeDataLight value)? light,
    TResult? Function(_UIApplicationThemeDataDark value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UIApplicationThemeDataLight value)? light,
    TResult Function(_UIApplicationThemeDataDark value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UIApplicationThemeDataCopyWith<UIApplicationThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIApplicationThemeDataCopyWith<$Res> {
  factory $UIApplicationThemeDataCopyWith(UIApplicationThemeData value,
          $Res Function(UIApplicationThemeData) then) =
      _$UIApplicationThemeDataCopyWithImpl<$Res, UIApplicationThemeData>;
  @useResult
  $Res call(
      {UIApplicationMode mode,
      ColorScheme colorScheme,
      SettingsThemeData settings});

  $SettingsThemeDataCopyWith<$Res> get settings;
}

/// @nodoc
class _$UIApplicationThemeDataCopyWithImpl<$Res,
        $Val extends UIApplicationThemeData>
    implements $UIApplicationThemeDataCopyWith<$Res> {
  _$UIApplicationThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? colorScheme = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as UIApplicationMode,
      colorScheme: null == colorScheme
          ? _value.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as ColorScheme,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsThemeData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsThemeDataCopyWith<$Res> get settings {
    return $SettingsThemeDataCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UIApplicationThemeDataLightImplCopyWith<$Res>
    implements $UIApplicationThemeDataCopyWith<$Res> {
  factory _$$UIApplicationThemeDataLightImplCopyWith(
          _$UIApplicationThemeDataLightImpl value,
          $Res Function(_$UIApplicationThemeDataLightImpl) then) =
      __$$UIApplicationThemeDataLightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIApplicationMode mode,
      ColorScheme colorScheme,
      SettingsThemeData settings});

  @override
  $SettingsThemeDataCopyWith<$Res> get settings;
}

/// @nodoc
class __$$UIApplicationThemeDataLightImplCopyWithImpl<$Res>
    extends _$UIApplicationThemeDataCopyWithImpl<$Res,
        _$UIApplicationThemeDataLightImpl>
    implements _$$UIApplicationThemeDataLightImplCopyWith<$Res> {
  __$$UIApplicationThemeDataLightImplCopyWithImpl(
      _$UIApplicationThemeDataLightImpl _value,
      $Res Function(_$UIApplicationThemeDataLightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? colorScheme = null,
    Object? settings = null,
  }) {
    return _then(_$UIApplicationThemeDataLightImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as UIApplicationMode,
      colorScheme: null == colorScheme
          ? _value.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as ColorScheme,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsThemeData,
    ));
  }
}

/// @nodoc

class _$UIApplicationThemeDataLightImpl
    implements _UIApplicationThemeDataLight {
  const _$UIApplicationThemeDataLightImpl(
      {this.mode = UIApplicationMode.light,
      this.colorScheme = UIApplicationColorScheme.light,
      this.settings = const SettingsThemeData.light()});

  @override
  @JsonKey()
  final UIApplicationMode mode;
  @override
  @JsonKey()
  final ColorScheme colorScheme;
  @override
  @JsonKey()
  final SettingsThemeData settings;

  @override
  String toString() {
    return 'UIApplicationThemeData.light(mode: $mode, colorScheme: $colorScheme, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIApplicationThemeDataLightImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.colorScheme, colorScheme) ||
                other.colorScheme == colorScheme) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, colorScheme, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UIApplicationThemeDataLightImplCopyWith<_$UIApplicationThemeDataLightImpl>
      get copyWith => __$$UIApplicationThemeDataLightImplCopyWithImpl<
          _$UIApplicationThemeDataLightImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)
        light,
    required TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)
        dark,
  }) {
    return light(mode, colorScheme, settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        light,
    TResult? Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        dark,
  }) {
    return light?.call(mode, colorScheme, settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        light,
    TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(mode, colorScheme, settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UIApplicationThemeDataLight value) light,
    required TResult Function(_UIApplicationThemeDataDark value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UIApplicationThemeDataLight value)? light,
    TResult? Function(_UIApplicationThemeDataDark value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UIApplicationThemeDataLight value)? light,
    TResult Function(_UIApplicationThemeDataDark value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class _UIApplicationThemeDataLight implements UIApplicationThemeData {
  const factory _UIApplicationThemeDataLight(
      {final UIApplicationMode mode,
      final ColorScheme colorScheme,
      final SettingsThemeData settings}) = _$UIApplicationThemeDataLightImpl;

  @override
  UIApplicationMode get mode;
  @override
  ColorScheme get colorScheme;
  @override
  SettingsThemeData get settings;
  @override
  @JsonKey(ignore: true)
  _$$UIApplicationThemeDataLightImplCopyWith<_$UIApplicationThemeDataLightImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UIApplicationThemeDataDarkImplCopyWith<$Res>
    implements $UIApplicationThemeDataCopyWith<$Res> {
  factory _$$UIApplicationThemeDataDarkImplCopyWith(
          _$UIApplicationThemeDataDarkImpl value,
          $Res Function(_$UIApplicationThemeDataDarkImpl) then) =
      __$$UIApplicationThemeDataDarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIApplicationMode mode,
      ColorScheme colorScheme,
      SettingsThemeData settings});

  @override
  $SettingsThemeDataCopyWith<$Res> get settings;
}

/// @nodoc
class __$$UIApplicationThemeDataDarkImplCopyWithImpl<$Res>
    extends _$UIApplicationThemeDataCopyWithImpl<$Res,
        _$UIApplicationThemeDataDarkImpl>
    implements _$$UIApplicationThemeDataDarkImplCopyWith<$Res> {
  __$$UIApplicationThemeDataDarkImplCopyWithImpl(
      _$UIApplicationThemeDataDarkImpl _value,
      $Res Function(_$UIApplicationThemeDataDarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? colorScheme = null,
    Object? settings = null,
  }) {
    return _then(_$UIApplicationThemeDataDarkImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as UIApplicationMode,
      colorScheme: null == colorScheme
          ? _value.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as ColorScheme,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsThemeData,
    ));
  }
}

/// @nodoc

class _$UIApplicationThemeDataDarkImpl implements _UIApplicationThemeDataDark {
  const _$UIApplicationThemeDataDarkImpl(
      {this.mode = UIApplicationMode.dark,
      this.colorScheme = UIApplicationColorScheme.dark,
      this.settings = const SettingsThemeData.dark()});

  @override
  @JsonKey()
  final UIApplicationMode mode;
  @override
  @JsonKey()
  final ColorScheme colorScheme;
  @override
  @JsonKey()
  final SettingsThemeData settings;

  @override
  String toString() {
    return 'UIApplicationThemeData.dark(mode: $mode, colorScheme: $colorScheme, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIApplicationThemeDataDarkImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.colorScheme, colorScheme) ||
                other.colorScheme == colorScheme) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, colorScheme, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UIApplicationThemeDataDarkImplCopyWith<_$UIApplicationThemeDataDarkImpl>
      get copyWith => __$$UIApplicationThemeDataDarkImplCopyWithImpl<
          _$UIApplicationThemeDataDarkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)
        light,
    required TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)
        dark,
  }) {
    return dark(mode, colorScheme, settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        light,
    TResult? Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        dark,
  }) {
    return dark?.call(mode, colorScheme, settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        light,
    TResult Function(UIApplicationMode mode, ColorScheme colorScheme,
            SettingsThemeData settings)?
        dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(mode, colorScheme, settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UIApplicationThemeDataLight value) light,
    required TResult Function(_UIApplicationThemeDataDark value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UIApplicationThemeDataLight value)? light,
    TResult? Function(_UIApplicationThemeDataDark value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UIApplicationThemeDataLight value)? light,
    TResult Function(_UIApplicationThemeDataDark value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class _UIApplicationThemeDataDark implements UIApplicationThemeData {
  const factory _UIApplicationThemeDataDark(
      {final UIApplicationMode mode,
      final ColorScheme colorScheme,
      final SettingsThemeData settings}) = _$UIApplicationThemeDataDarkImpl;

  @override
  UIApplicationMode get mode;
  @override
  ColorScheme get colorScheme;
  @override
  SettingsThemeData get settings;
  @override
  @JsonKey(ignore: true)
  _$$UIApplicationThemeDataDarkImplCopyWith<_$UIApplicationThemeDataDarkImpl>
      get copyWith => throw _privateConstructorUsedError;
}
