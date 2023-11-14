import 'package:nobel/domain/model/full_name_model.dart';

class FullNameDto extends FullNameModel {
  const FullNameDto({
    String? en,
  }) : super(en: en);

  factory FullNameDto.fromMap(Map<String, dynamic> map) => FullNameDto(
        en: map['en'],
      );
}
