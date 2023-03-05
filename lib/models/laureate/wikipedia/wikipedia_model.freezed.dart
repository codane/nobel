// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wikipedia_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wikipedia _$WikipediaFromJson(Map<String, dynamic> json) {
  return _Wikipedia.fromJson(json);
}

/// @nodoc
mixin _$Wikipedia {
  String? get slug => throw _privateConstructorUsedError;
  String? get english => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WikipediaCopyWith<Wikipedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WikipediaCopyWith<$Res> {
  factory $WikipediaCopyWith(Wikipedia value, $Res Function(Wikipedia) then) =
      _$WikipediaCopyWithImpl<$Res, Wikipedia>;
  @useResult
  $Res call({String? slug, String? english});
}

/// @nodoc
class _$WikipediaCopyWithImpl<$Res, $Val extends Wikipedia>
    implements $WikipediaCopyWith<$Res> {
  _$WikipediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? english = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      english: freezed == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WikipediaCopyWith<$Res> implements $WikipediaCopyWith<$Res> {
  factory _$$_WikipediaCopyWith(
          _$_Wikipedia value, $Res Function(_$_Wikipedia) then) =
      __$$_WikipediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? slug, String? english});
}

/// @nodoc
class __$$_WikipediaCopyWithImpl<$Res>
    extends _$WikipediaCopyWithImpl<$Res, _$_Wikipedia>
    implements _$$_WikipediaCopyWith<$Res> {
  __$$_WikipediaCopyWithImpl(
      _$_Wikipedia _value, $Res Function(_$_Wikipedia) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? english = freezed,
  }) {
    return _then(_$_Wikipedia(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      english: freezed == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wikipedia implements _Wikipedia {
  _$_Wikipedia({this.slug, this.english});

  factory _$_Wikipedia.fromJson(Map<String, dynamic> json) =>
      _$$_WikipediaFromJson(json);

  @override
  final String? slug;
  @override
  final String? english;

  @override
  String toString() {
    return 'Wikipedia(slug: $slug, english: $english)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wikipedia &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.english, english) || other.english == english));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slug, english);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WikipediaCopyWith<_$_Wikipedia> get copyWith =>
      __$$_WikipediaCopyWithImpl<_$_Wikipedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WikipediaToJson(
      this,
    );
  }
}

abstract class _Wikipedia implements Wikipedia {
  factory _Wikipedia({final String? slug, final String? english}) =
      _$_Wikipedia;

  factory _Wikipedia.fromJson(Map<String, dynamic> json) =
      _$_Wikipedia.fromJson;

  @override
  String? get slug;
  @override
  String? get english;
  @override
  @JsonKey(ignore: true)
  _$$_WikipediaCopyWith<_$_Wikipedia> get copyWith =>
      throw _privateConstructorUsedError;
}
