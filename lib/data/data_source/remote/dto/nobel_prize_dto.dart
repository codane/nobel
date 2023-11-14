import 'package:nobel/data/data_source/remote/dto/category_dto.dart';
import 'package:nobel/data/data_source/remote/dto/motivation_dto.dart';
import 'package:nobel/domain/model/nobel_prize_model.dart';

class NobelPrizeDto extends NobelPrizeModel {
  const NobelPrizeDto({
    String? awardYear,
    CategoryDto? category,
    String? prizeStatus,
    MotivationDto? motivation,
    int? prizeAmount,
  }) : super(
          awardYear: awardYear,
          category: category,
          prizeStatus: prizeStatus,
          motivation: motivation,
          prizeAmount: prizeAmount,
        );

  factory NobelPrizeDto.fromMap(Map<String, dynamic> map) => NobelPrizeDto(
        awardYear: map['awardYear'],
        category: map['category'] != null ? CategoryDto.fromMap(map['category']) : null,
        prizeStatus: map['prizeStatus'],
        motivation: map['motivation'] != null ? MotivationDto.fromMap(map['motivation']) : null, 
        prizeAmount: map['prizeAmount'],
      );
}
