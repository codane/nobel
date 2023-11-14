import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nobel/domain/use_case/get_laureates_use_case.dart';
import 'package:nobel/presentation/laureates_state.dart';

class LaureatesController extends StateNotifier<LaureatesState> {
  LaureatesController(this.useCase, this.apiOffset, this.categoryAbbreviation) : super(LaureatesState()) {
    getLaureatesByCategory(apiOffset: apiOffset, categoryAbbreviation: categoryAbbreviation);
  }

  final GetLaureatesUseCase useCase;
  final int apiOffset;
  final String categoryAbbreviation;

  Future<void> getLaureatesByCategory ({required int apiOffset, required String categoryAbbreviation}) async {
    final laureatesList = await useCase(apiOffset: apiOffset, categoryAbbreviation: categoryAbbreviation);
    state = state.copyWith(laureatesList: laureatesList);
  }

}