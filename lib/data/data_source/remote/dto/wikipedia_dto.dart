import 'package:nobel/domain/model/wikipedia_model.dart';

class WikipediaDto extends WikipediaModel {
  const WikipediaDto({
    String? english,
  }) : super(english: english);

  factory WikipediaDto.fromMap(Map<String, dynamic> map) => WikipediaDto(
        english: map['english'],
      );
}
