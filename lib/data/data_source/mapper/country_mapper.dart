import 'package:nobel/data/data_source/remote/dto/country_dto.dart';
import 'package:nobel/domain/model/country_model.dart';

CountryModel toCountryModel(CountryDto dto) => CountryModel(
  en: dto.en,
);