import 'package:nobel/domain/model/city_model.dart';

class CityDto extends CityModel {
  const CityDto({
    String? en,
  }) : super(en: en);

  factory CityDto.fromMap(Map<String, dynamic> map) => CityDto(
        en: map['en'],
      );
}
