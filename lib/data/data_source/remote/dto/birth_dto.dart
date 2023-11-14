import 'package:nobel/data/data_source/remote/dto/place_dto.dart';
import 'package:nobel/domain/model/birth_model.dart';

class BirthDto extends BirthModel {
  const BirthDto({
    String? date,
    PlaceDto? place,
  }) : super(date: date, place: place);

  factory BirthDto.fromMap(Map<String, dynamic> map) => BirthDto(
        date: map['date'],
        place: map['place'] != null ? PlaceDto.fromMap(map['place']) : null,
      );
}
