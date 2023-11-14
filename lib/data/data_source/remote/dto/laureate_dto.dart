import 'package:nobel/data/data_source/remote/dto/birth_dto.dart';
import 'package:nobel/data/data_source/remote/dto/full_name_dto.dart';
import 'package:nobel/data/data_source/remote/dto/nobel_prize_dto.dart';
import 'package:nobel/data/data_source/remote/dto/wikipedia_dto.dart';
import 'package:nobel/domain/model/laureate_model.dart';

class LaureateDto extends LaureateModel {
  const LaureateDto({
    String? id,
    FullNameDto? fullName,
    String? gender,
    BirthDto? birth,
    WikipediaDto? wikipedia,
    List<NobelPrizeDto>? nobelPrizes,
  }) : super(
          id: id,
          fullName: fullName,
          gender: gender,
          birth: birth,
          wikipedia: wikipedia,
          nobelPrizes: nobelPrizes,
        );

  factory LaureateDto.fromMap(Map<String, dynamic> map) => LaureateDto(
        id: map['id'],
        fullName: map['fullName'] != null
            ? FullNameDto.fromMap(map['fullName'])
            : null,
        gender: map['gender'],
        birth: map['birth'] != null ? BirthDto.fromMap(map['birth']) : null,
        wikipedia: map['wikipedia'] != null
            ? WikipediaDto.fromMap(map['wikipedia'])
            : null,
        nobelPrizes: map['nobelPrizes'] != null
            ? List<NobelPrizeDto>.from(
                map['nobelPrizes'].map(
                  (e) => NobelPrizeDto.fromMap(e),
                ),
              )
            : null,
      );
}
