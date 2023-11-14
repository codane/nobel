
import 'package:nobel/domain/model/laureate_model.dart';

abstract class NobelRepository {
  Future<List<LaureateModel>> getLaureatesByCategory({
    required int apiOffset,
    required String categoryAbbreviation,
    }
  );
}
