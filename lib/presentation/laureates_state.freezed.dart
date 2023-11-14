// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laureates_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaureatesState {
  List<LaureateModel> get laureatesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaureatesStateCopyWith<LaureatesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaureatesStateCopyWith<$Res> {
  factory $LaureatesStateCopyWith(
          LaureatesState value, $Res Function(LaureatesState) then) =
      _$LaureatesStateCopyWithImpl<$Res, LaureatesState>;
  @useResult
  $Res call({List<LaureateModel> laureatesList});
}

/// @nodoc
class _$LaureatesStateCopyWithImpl<$Res, $Val extends LaureatesState>
    implements $LaureatesStateCopyWith<$Res> {
  _$LaureatesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? laureatesList = null,
  }) {
    return _then(_value.copyWith(
      laureatesList: null == laureatesList
          ? _value.laureatesList
          : laureatesList // ignore: cast_nullable_to_non_nullable
              as List<LaureateModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LaureatesStateCopyWith<$Res>
    implements $LaureatesStateCopyWith<$Res> {
  factory _$$_LaureatesStateCopyWith(
          _$_LaureatesState value, $Res Function(_$_LaureatesState) then) =
      __$$_LaureatesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LaureateModel> laureatesList});
}

/// @nodoc
class __$$_LaureatesStateCopyWithImpl<$Res>
    extends _$LaureatesStateCopyWithImpl<$Res, _$_LaureatesState>
    implements _$$_LaureatesStateCopyWith<$Res> {
  __$$_LaureatesStateCopyWithImpl(
      _$_LaureatesState _value, $Res Function(_$_LaureatesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? laureatesList = null,
  }) {
    return _then(_$_LaureatesState(
      laureatesList: null == laureatesList
          ? _value._laureatesList
          : laureatesList // ignore: cast_nullable_to_non_nullable
              as List<LaureateModel>,
    ));
  }
}

/// @nodoc

class _$_LaureatesState implements _LaureatesState {
  _$_LaureatesState({final List<LaureateModel> laureatesList = const []})
      : _laureatesList = laureatesList;

  final List<LaureateModel> _laureatesList;
  @override
  @JsonKey()
  List<LaureateModel> get laureatesList {
    if (_laureatesList is EqualUnmodifiableListView) return _laureatesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_laureatesList);
  }

  @override
  String toString() {
    return 'LaureatesState(laureatesList: $laureatesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaureatesState &&
            const DeepCollectionEquality()
                .equals(other._laureatesList, _laureatesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_laureatesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaureatesStateCopyWith<_$_LaureatesState> get copyWith =>
      __$$_LaureatesStateCopyWithImpl<_$_LaureatesState>(this, _$identity);
}

abstract class _LaureatesState implements LaureatesState {
  factory _LaureatesState({final List<LaureateModel> laureatesList}) =
      _$_LaureatesState;

  @override
  List<LaureateModel> get laureatesList;
  @override
  @JsonKey(ignore: true)
  _$$_LaureatesStateCopyWith<_$_LaureatesState> get copyWith =>
      throw _privateConstructorUsedError;
}
