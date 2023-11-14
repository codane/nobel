import 'package:nobel/data/data_source/remote/dto/city_dto.dart';
import 'package:nobel/domain/model/city_model.dart';

CityModel toCityModel(CityDto dto) => CityModel(
  en: dto.en,
);