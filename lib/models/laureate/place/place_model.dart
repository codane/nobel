import 'package:freezed_annotation/freezed_annotation.dart';

import '../city/city_model.dart';
import '../continent/continent_model.dart';
import '../country/country_model.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class Place with _$Place {

  factory Place({
    City? city,
    Country? country,
    Continent? continent    
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}