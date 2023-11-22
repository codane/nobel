import 'package:flutter_test/flutter_test.dart';
import 'package:nobel/data/data_source/remote/dto/laureate_dto.dart';
import 'package:nobel/domain/model/laureate_model.dart';

void main() {
  const testLaureateDto = LaureateDto();

  test(
    'should be a subclass of LaureateModel',
    () => expect(
      testLaureateDto,
      isA<LaureateModel>(),
    ),
  );
}
