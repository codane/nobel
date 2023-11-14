import 'package:nobel/data/data_source/remote/dto/category_dto.dart';
import 'package:nobel/domain/model/category_model.dart';

CategoryModel toCategoryModel(CategoryDto dto) => CategoryModel(
      en: dto.en,
    );
