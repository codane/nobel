import 'package:freezed_annotation/freezed_annotation.dart';

part 'continent_model.freezed.dart';
part 'continent_model.g.dart';

@freezed
class Continent with _$Continent {

  factory Continent({
    String? en,
    String? no,
    String? se
  }) = _Continent;

  factory Continent.fromJson(Map<String, dynamic> json) => _$ContinentFromJson(json);
}