import 'package:freezed_annotation/freezed_annotation.dart';

part 'wikipedia_model.freezed.dart';
part 'wikipedia_model.g.dart';

@freezed
class Wikipedia with _$Wikipedia {

  factory Wikipedia({
    String? slug,
    String? english
  }) = _Wikipedia;

  factory Wikipedia.fromJson(Map<String, dynamic> json) => _$WikipediaFromJson(json);
}