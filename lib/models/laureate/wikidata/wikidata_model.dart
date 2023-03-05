import 'package:freezed_annotation/freezed_annotation.dart';

part 'wikidata_model.freezed.dart';
part 'wikidata_model.g.dart';

@freezed
class Wikidata with _$Wikidata {

  factory Wikidata({
    String? id,
    String? url
  }) = _Wikidata;

  factory Wikidata.fromJson(Map<String, dynamic> json) => _$WikidataFromJson(json);
}