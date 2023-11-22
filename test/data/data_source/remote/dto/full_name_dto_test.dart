import 'package:flutter_test/flutter_test.dart';
import 'package:nobel/data/data_source/remote/dto/full_name_dto.dart';
import 'package:nobel/domain/model/full_name_model.dart';

void main() {
  const testFullNameDto = FullNameDto();

  test(
    'should be a subclass of FullNameModel',
    () => expect(
      testFullNameDto,
      isA<FullNameModel>(),
    ),
  );
}
