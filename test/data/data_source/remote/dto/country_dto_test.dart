import 'package:flutter_test/flutter_test.dart';
import 'package:nobel/data/data_source/remote/dto/country_dto.dart';
import 'package:nobel/domain/model/country_model.dart';

void main() {
  const testCountryDto = CountryDto();

  test(
    'should be a subclass of CountryModel',
    () => expect(
      testCountryDto,
      isA<CountryModel>(),
    ),
  );
}
