// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Birth _$BirthFromJson(Map<String, dynamic> json) {
  return _Birth.fromJson(json);
}

/// @nodoc
mixin _$Birth {
  String? get date => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthCopyWith<Birth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthCopyWith<$Res> {
  factory $BirthCopyWith(Birth value, $Res Function(Birth) then) =
      _$BirthCopyWithImpl<$Res, Birth>;
  @useResult
  $Res call({String? date, Place? place});

  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class _$BirthCopyWithImpl<$Res, $Val extends Birth>
    implements $BirthCopyWith<$Res> {
  _$BirthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? place = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BirthCopyWith<$Res> implements $BirthCopyWith<$Res> {
  factory _$$_BirthCopyWith(_$_Birth value, $Res Function(_$_Birth) then) =
      __$$_BirthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, Place? place});

  @override
  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$_BirthCopyWithImpl<$Res> extends _$BirthCopyWithImpl<$Res, _$_Birth>
    implements _$$_BirthCopyWith<$Res> {
  __$$_BirthCopyWithImpl(_$_Birth _value, $Res Function(_$_Birth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? place = freezed,
  }) {
    return _then(_$_Birth(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Birth implements _Birth {
  _$_Birth({this.date, this.place});

  factory _$_Birth.fromJson(Map<String, dynamic> json) =>
      _$$_BirthFromJson(json);

  @override
  final String? date;
  @override
  final Place? place;

  @override
  String toString() {
    return 'Birth(date: $date, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Birth &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.place, place) || other.place == place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirthCopyWith<_$_Birth> get copyWith =>
      __$$_BirthCopyWithImpl<_$_Birth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BirthToJson(
      this,
    );
  }
}

abstract class _Birth implements Birth {
  factory _Birth({final String? date, final Place? place}) = _$_Birth;

  factory _Birth.fromJson(Map<String, dynamic> json) = _$_Birth.fromJson;

  @override
  String? get date;
  @override
  Place? get place;
  @override
  @JsonKey(ignore: true)
  _$$_BirthCopyWith<_$_Birth> get copyWith =>
      throw _privateConstructorUsedError;
}
