import 'package:flutter_test/flutter_test.dart';
import 'package:nobel/data/data_source/remote/dto/birth_dto.dart';
import 'package:nobel/domain/model/birth_model.dart';

void main() {
  const testBirthDto = BirthDto();

  test(
    'should be a subclass of BirthModel',
    () => expect(
      testBirthDto,
      isA<BirthModel>(),
    ),
  );
}
