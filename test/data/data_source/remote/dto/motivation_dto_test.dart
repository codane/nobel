import 'package:flutter_test/flutter_test.dart';
import 'package:nobel/data/data_source/remote/dto/motivation_dto.dart';
import 'package:nobel/domain/model/motivation_model.dart';

void main() {
  const testMotivationDto = MotivationDto();

  test(
    'should be a subclass of MotivationModel',
    () => expect(
      testMotivationDto,
      isA<MotivationModel>(),
    ),
  );
}
