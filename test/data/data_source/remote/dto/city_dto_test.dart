import 'package:flutter_test/flutter_test.dart';
import 'package:nobel/data/data_source/remote/dto/city_dto.dart';
import 'package:nobel/domain/model/city_model.dart';

void main() {
  const testCityDto = CityDto();

  test(
    'should be a subclass of CityModel',
    () => expect(
      testCityDto,
      isA<CityModel>(),
    ),
  );
}
