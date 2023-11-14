import 'package:nobel/domain/model/category_model.dart';

class CategoryDto extends CategoryModel {
  const CategoryDto({
    String? en,
  }) : super(en: en);

  factory CategoryDto.fromMap(Map<String, dynamic> map) => CategoryDto(
        en: map['en'],
      );
}
