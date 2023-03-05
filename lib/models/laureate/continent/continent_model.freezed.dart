// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'continent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Continent _$ContinentFromJson(Map<String, dynamic> json) {
  return _Continent.fromJson(json);
}

/// @nodoc
mixin _$Continent {
  String? get en => throw _privateConstructorUsedError;
  String? get no => throw _privateConstructorUsedError;
  String? get se => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContinentCopyWith<Continent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinentCopyWith<$Res> {
  factory $ContinentCopyWith(Continent value, $Res Function(Continent) then) =
      _$ContinentCopyWithImpl<$Res, Continent>;
  @useResult
  $Res call({String? en, String? no, String? se});
}

/// @nodoc
class _$ContinentCopyWithImpl<$Res, $Val extends Continent>
    implements $ContinentCopyWith<$Res> {
  _$ContinentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? no = freezed,
    Object? se = freezed,
  }) {
    return _then(_value.copyWith(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      no: freezed == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String?,
      se: freezed == se
          ? _value.se
          : se // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContinentCopyWith<$Res> implements $ContinentCopyWith<$Res> {
  factory _$$_ContinentCopyWith(
          _$_Continent value, $Res Function(_$_Continent) then) =
      __$$_ContinentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? en, String? no, String? se});
}

/// @nodoc
class __$$_ContinentCopyWithImpl<$Res>
    extends _$ContinentCopyWithImpl<$Res, _$_Continent>
    implements _$$_ContinentCopyWith<$Res> {
  __$$_ContinentCopyWithImpl(
      _$_Continent _value, $Res Function(_$_Continent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? no = freezed,
    Object? se = freezed,
  }) {
    return _then(_$_Continent(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      no: freezed == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
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
class _$_Continent implements _Continent {
  _$_Continent({this.en, this.no, this.se});

  factory _$_Continent.fromJson(Map<String, dynamic> json) =>
      _$$_ContinentFromJson(json);

  @override
  final String? en;
  @override
  final String? no;
  @override
  final String? se;

  @override
  String toString() {
    return 'Continent(en: $en, no: $no, se: $se)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Continent &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.no, no) || other.no == no) &&
            (identical(other.se, se) || other.se == se));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, no, se);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContinentCopyWith<_$_Continent> get copyWith =>
      __$$_ContinentCopyWithImpl<_$_Continent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContinentToJson(
      this,
    );
  }
}

abstract class _Continent implements Continent {
  factory _Continent({final String? en, final String? no, final String? se}) =
      _$_Continent;

  factory _Continent.fromJson(Map<String, dynamic> json) =
      _$_Continent.fromJson;

  @override
  String? get en;
  @override
  String? get no;
  @override
  String? get se;
  @override
  @JsonKey(ignore: true)
  _$$_ContinentCopyWith<_$_Continent> get copyWith =>
      throw _privateConstructorUsedError;
}
