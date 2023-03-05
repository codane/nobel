// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FullName _$FullNameFromJson(Map<String, dynamic> json) {
  return _FullName.fromJson(json);
}

/// @nodoc
mixin _$FullName {
  String? get en => throw _privateConstructorUsedError;
  String? get se => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullNameCopyWith<FullName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullNameCopyWith<$Res> {
  factory $FullNameCopyWith(FullName value, $Res Function(FullName) then) =
      _$FullNameCopyWithImpl<$Res, FullName>;
  @useResult
  $Res call({String? en, String? se});
}

/// @nodoc
class _$FullNameCopyWithImpl<$Res, $Val extends FullName>
    implements $FullNameCopyWith<$Res> {
  _$FullNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? se = freezed,
  }) {
    return _then(_value.copyWith(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      se: freezed == se
          ? _value.se
          : se // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FullNameCopyWith<$Res> implements $FullNameCopyWith<$Res> {
  factory _$$_FullNameCopyWith(
          _$_FullName value, $Res Function(_$_FullName) then) =
      __$$_FullNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? en, String? se});
}

/// @nodoc
class __$$_FullNameCopyWithImpl<$Res>
    extends _$FullNameCopyWithImpl<$Res, _$_FullName>
    implements _$$_FullNameCopyWith<$Res> {
  __$$_FullNameCopyWithImpl(
      _$_FullName _value, $Res Function(_$_FullName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? se = freezed,
  }) {
    return _then(_$_FullName(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      se: freezed == se
          ? _value.se
          : se // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FullName implements _FullName {
  _$_FullName({this.en, this.se});

  factory _$_FullName.fromJson(Map<String, dynamic> json) =>
      _$$_FullNameFromJson(json);

  @override
  final String? en;
  @override
  final String? se;

  @override
  String toString() {
    return 'FullName(en: $en, se: $se)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullName &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.se, se) || other.se == se));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, se);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullNameCopyWith<_$_FullName> get copyWith =>
      __$$_FullNameCopyWithImpl<_$_FullName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FullNameToJson(
      this,
    );
  }
}

abstract class _FullName implements FullName {
  factory _FullName({final String? en, final String? se}) = _$_FullName;

  factory _FullName.fromJson(Map<String, dynamic> json) = _$_FullName.fromJson;

  @override
  String? get en;
  @override
  String? get se;
  @override
  @JsonKey(ignore: true)
  _$$_FullNameCopyWith<_$_FullName> get copyWith =>
      throw _privateConstructorUsedError;
}
