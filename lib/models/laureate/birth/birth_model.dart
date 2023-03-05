import 'package:freezed_annotation/freezed_annotation.dart';
import '../place/place_model.dart';

part 'birth_model.freezed.dart';
part 'birth_model.g.dart';

@freezed
class Birth with _$Birth {

  factory Birth({
    String? date,
    Place? place
  }) = _Birth;

  factory Birth.fromJson(Map<String, dynamic> json) => _$BirthFromJson(json);
}