import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nobel/domain/model/birth_model.dart';
import 'package:nobel/domain/model/city_model.dart';
import 'package:nobel/domain/model/country_model.dart';
import 'package:nobel/domain/model/full_name_model.dart';
import 'package:nobel/domain/model/laureate_model.dart';
import 'package:nobel/domain/model/place_model.dart';
import 'package:nobel/domain/model/wikipedia_model.dart';
import 'package:nobel/domain/repository/nobel_repository.dart';
import 'package:nobel/domain/use_case/get_laureates_use_case.dart';

class MockNobelRepository extends Mock implements NobelRepository {}

void main() {
  late GetLaureatesUseCase getLaureatesUseCase;
  late MockNobelRepository mockNobelRepository;
  final testLaureateList = [
    const LaureateModel(
      id: '1',
      fullName: FullNameModel(en: ''),
      gender: '',
      birth: BirthModel(
        date: '',
        place: PlaceModel(
          city: CityModel(en: ''),
          country: CountryModel(en: ''),
        ),
      ),
      wikipedia: WikipediaModel(english: ''),
      nobelPrizes: [],
    ),
    const LaureateModel(
      id: '2',
      fullName: FullNameModel(en: ''),
      gender: '',
      birth: BirthModel(
        date: '',
        place: PlaceModel(
          city: CityModel(en: ''),
          country: CountryModel(en: ''),
        ),
      ),
      wikipedia: WikipediaModel(english: ''),
      nobelPrizes: [],
    )
  ];

  setUp(() {
    mockNobelRepository = MockNobelRepository();
    getLaureatesUseCase = GetLaureatesUseCase(repository: mockNobelRepository);
  });

  const apiOffset = 0;
  const categoryAbbreviation = '';

  test('should get a list of laureates for the category from the repository ',
      () async {
    when(
      () => mockNobelRepository.getLaureatesByCategory(
          apiOffset: apiOffset, categoryAbbreviation: categoryAbbreviation),
    ).thenAnswer((_) async => testLaureateList);

    final response = await getLaureatesUseCase(
        apiOffset: apiOffset, categoryAbbreviation: categoryAbbreviation);

    verify(
      () => mockNobelRepository.getLaureatesByCategory(
          apiOffset: apiOffset, categoryAbbreviation: categoryAbbreviation),
    );

    expect(response, testLaureateList);
    verifyNoMoreInteractions(mockNobelRepository);
  });
}
