import 'package:nobel/data/data_source/remote/dto/city_dto.dart';
import 'package:nobel/data/data_source/remote/dto/country_dto.dart';
import 'package:nobel/domain/model/place_model.dart';

class PlaceDto extends PlaceModel {
  const PlaceDto({
    CityDto? city,
    CountryDto? country,
  }) : super(city: city, country: country);

  factory PlaceDto.fromMap(Map<String, dynamic> map) => PlaceDto(
        city: map['city'] != null ? CityDto.fromMap(map['city']) : null,
        country: map['country'] != null ? CountryDto.fromMap(map['country']) : null,
      );
}
