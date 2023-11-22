import 'package:flutter_test/flutter_test.dart';
import 'package:nobel/data/data_source/remote/dto/category_dto.dart';
import 'package:nobel/domain/model/category_model.dart';

void main() {
  const testCategoryDto = CategoryDto();

  test(
    'should be a subclass of CategoryModel',
    () => expect(
      testCategoryDto,
      isA<CategoryModel>(),
    ),
  );
}
