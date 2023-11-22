import 'package:flutter_test/flutter_test.dart';
import 'package:nobel/data/data_source/remote/dto/nobel_prize_dto.dart';
import 'package:nobel/domain/model/nobel_prize_model.dart';

void main() {
  const testNobelPrizeDto = NobelPrizeDto();

  test(
    'should be a subclass of NobelPrizeModel',
    () => expect(
      testNobelPrizeDto,
      isA<NobelPrizeModel>(),
    ),
  );
}
