
import 'package:nobel/domain/model/laureate_model.dart';
import 'package:nobel/domain/repository/nobel_repository.dart';

class GetLaureatesUseCase {
  final NobelRepository repository;

  const GetLaureatesUseCase({
    required this.repository
  });

  Future<List<LaureateModel>> call(
          {required int apiOffset, required String categoryAbbreviation}) =>
      repository.getLaureatesByCategory(
          apiOffset: apiOffset, categoryAbbreviation: categoryAbbreviation);
}
