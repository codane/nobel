// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wikidata_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wikidata _$WikidataFromJson(Map<String, dynamic> json) {
  return _Wikidata.fromJson(json);
}

/// @nodoc
mixin _$Wikidata {
  String? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WikidataCopyWith<Wikidata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WikidataCopyWith<$Res> {
  factory $WikidataCopyWith(Wikidata value, $Res Function(Wikidata) then) =
      _$WikidataCopyWithImpl<$Res, Wikidata>;
  @useResult
  $Res call({String? id, String? url});
}

/// @nodoc
class _$WikidataCopyWithImpl<$Res, $Val extends Wikidata>
    implements $WikidataCopyWith<$Res> {
  _$WikidataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WikidataCopyWith<$Res> implements $WikidataCopyWith<$Res> {
  factory _$$_WikidataCopyWith(
          _$_Wikidata value, $Res Function(_$_Wikidata) then) =
      __$$_WikidataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? url});
}

/// @nodoc
class __$$_WikidataCopyWithImpl<$Res>
    extends _$WikidataCopyWithImpl<$Res, _$_Wikidata>
    implements _$$_WikidataCopyWith<$Res> {
  __$$_WikidataCopyWithImpl(
      _$_Wikidata _value, $Res Function(_$_Wikidata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Wikidata(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wikidata implements _Wikidata {
  _$_Wikidata({this.id, this.url});

  factory _$_Wikidata.fromJson(Map<String, dynamic> json) =>
      _$$_WikidataFromJson(json);

  @override
  final String? id;
  @override
  final String? url;

  @override
  String toString() {
    return 'Wikidata(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wikidata &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WikidataCopyWith<_$_Wikidata> get copyWith =>
      __$$_WikidataCopyWithImpl<_$_Wikidata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WikidataToJson(
      this,
    );
  }
}

abstract class _Wikidata implements Wikidata {
  factory _Wikidata({final String? id, final String? url}) = _$_Wikidata;

  factory _Wikidata.fromJson(Map<String, dynamic> json) = _$_Wikidata.fromJson;

  @override
  String? get id;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_WikidataCopyWith<_$_Wikidata> get copyWith =>
      throw _privateConstructorUsedError;
}
