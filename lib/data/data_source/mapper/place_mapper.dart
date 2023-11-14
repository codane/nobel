import 'package:nobel/data/data_source/remote/dto/place_dto.dart';
import 'package:nobel/domain/model/place_model.dart';

PlaceModel toPlaceModel(PlaceDto dto) => PlaceModel(
  city: dto.city,
  country: dto.country
);