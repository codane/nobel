import 'package:nobel/data/data_source/remote/dto/laureate_dto.dart';
import 'package:nobel/domain/model/nobel_response_model.dart';

class NobelResponseDto extends NobelResponseModel {
  const NobelResponseDto({
    List<LaureateDto>? laureates,
  }) : super(laureates: laureates);

  factory NobelResponseDto.fromMap(Map<String, dynamic> map) =>
      NobelResponseDto(
        laureates: map['laureates'] != null ? List<LaureateDto>.from(map['laureates']
        .map((e) => LaureateDto.fromMap(e))) : null,
      );
}
