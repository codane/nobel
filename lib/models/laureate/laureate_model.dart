import 'package:freezed_annotation/freezed_annotation.dart';
import 'full_name/full_name_model.dart';
import 'wikipedia/wikipedia_model.dart';
import 'wikidata/wikidata_model.dart';
import 'birth/birth_model.dart';
import 'nobel_prize/nobel_prize.dart';

part 'laureate_model.freezed.dart';
part 'laureate_model.g.dart';

@freezed
class Laureate with _$Laureate {

  factory Laureate({
    String? id,
    FullName? fullName,
    String? fileName,
    String? gender,
    Birth? birth,
    Wikipedia? wikipedia, 
    Wikidata? wikidata,
    List<NobelPrize>? nobelPrizes
  }) = _Laureate;

  factory Laureate.fromJson(Map<String, dynamic> json) => _$LaureateFromJson(json);
}