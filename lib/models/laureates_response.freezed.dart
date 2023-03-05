// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laureates_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaureatesResponse _$LaureatesResponseFromJson(Map<String, dynamic> json) {
  return _LaureatesResponse.fromJson(json);
}

/// @nodoc
mixin _$LaureatesResponse {
  List<Laureate>? get laureates => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaureatesResponseCopyWith<LaureatesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaureatesResponseCopyWith<$Res> {
  factory $LaureatesResponseCopyWith(
          LaureatesResponse value, $Res Function(LaureatesResponse) then) =
      _$LaureatesResponseCopyWithImpl<$Res, LaureatesResponse>;
  @useResult
  $Res call({List<Laureate>? laureates, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$LaureatesResponseCopyWithImpl<$Res, $Val extends LaureatesResponse>
    implements $LaureatesResponseCopyWith<$Res> {
  _$LaureatesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? laureates = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      laureates: freezed == laureates
          ? _value.laureates
          : laureates // ignore: cast_nullable_to_non_nullable
              as List<Laureate>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LaureatesResponseCopyWith<$Res>
    implements $LaureatesResponseCopyWith<$Res> {
  factory _$$_LaureatesResponseCopyWith(_$_LaureatesResponse value,
          $Res Function(_$_LaureatesResponse) then) =
      __$$_LaureatesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Laureate>? laureates, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_LaureatesResponseCopyWithImpl<$Res>
    extends _$LaureatesResponseCopyWithImpl<$Res, _$_LaureatesResponse>
    implements _$$_LaureatesResponseCopyWith<$Res> {
  __$$_LaureatesResponseCopyWithImpl(
      _$_LaureatesResponse _value, $Res Function(_$_LaureatesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? laureates = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_LaureatesResponse(
      laureates: freezed == laureates
          ? _value._laureates
          : laureates // ignore: cast_nullable_to_non_nullable
              as List<Laureate>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LaureatesResponse implements _LaureatesResponse {
  _$_LaureatesResponse({final List<Laureate>? laureates, this.meta})
      : _laureates = laureates;

  factory _$_LaureatesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LaureatesResponseFromJson(json);

  final List<Laureate>? _laureates;
  @override
  List<Laureate>? get laureates {
    final value = _laureates;
    if (value == null) return null;
    if (_laureates is EqualUnmodifiableListView) return _laureates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'LaureatesResponse(laureates: $laureates, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaureatesResponse &&
            const DeepCollectionEquality()
                .equals(other._laureates, _laureates) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_laureates), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaureatesResponseCopyWith<_$_LaureatesResponse> get copyWith =>
      __$$_LaureatesResponseCopyWithImpl<_$_LaureatesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaureatesResponseToJson(
      this,
    );
  }
}

abstract class _LaureatesResponse implements LaureatesResponse {
  factory _LaureatesResponse(
      {final List<Laureate>? laureates,
      final Meta? meta}) = _$_LaureatesResponse;

  factory _LaureatesResponse.fromJson(Map<String, dynamic> json) =
      _$_LaureatesResponse.fromJson;

  @override
  List<Laureate>? get laureates;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_LaureatesResponseCopyWith<_$_LaureatesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
