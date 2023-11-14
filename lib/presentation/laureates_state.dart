import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nobel/domain/model/laureate_model.dart';

part 'laureates_state.freezed.dart';


@freezed
class LaureatesState with _$LaureatesState {

  factory LaureatesState({
    @Default([]) List<LaureateModel> laureatesList,
  }) = _LaureatesState;
}