import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_name_model.freezed.dart';
part 'full_name_model.g.dart';

@freezed
class FullName with _$FullName {

  factory FullName({
    String? en,
    String? se
  }) = _FullName;

  factory FullName.fromJson(Map<String, dynamic> json) => _$FullNameFromJson(json);
}