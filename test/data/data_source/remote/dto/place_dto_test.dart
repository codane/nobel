import 'package:flutter_test/flutter_test.dart';
import 'package:nobel/data/data_source/remote/dto/place_dto.dart';
import 'package:nobel/domain/model/place_model.dart';

void main() {
  const testPlaceDto = PlaceDto();

  test(
    'should be a subclass of PlaceModel',
    () => expect(
      testPlaceDto,
      isA<PlaceModel>(),
    ),
  );
}
