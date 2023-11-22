import 'package:flutter_test/flutter_test.dart';
import 'package:nobel/data/data_source/remote/dto/wikipedia_dto.dart';
import 'package:nobel/domain/model/wikipedia_model.dart';

void main() {
  const testWikipediaDto = WikipediaDto();

  test(
    'should be a subclass of WikipediaModel',
    () => expect(
      testWikipediaDto,
      isA<WikipediaModel>(),
    ),
  );
}
