import 'package:freezed_annotation/freezed_annotation.dart';

part 'motivation_model.freezed.dart';
part 'motivation_model.g.dart';

@freezed
class Motivation with _$Motivation {

  factory Motivation({
    String? en,
    String? se
  }) = _Motivation;

  factory Motivation.fromJson(Map<String, dynamic> json) => _$MotivationFromJson(json);
}