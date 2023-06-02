import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nobel/services/nobel_api_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/laureate/laureate_model.dart';

part 'nobel_providers.freezed.dart';

final apiOffsetProvider = StateProvider.autoDispose<int>((ref) => 0);
final categoryAbbreviationProvider = StateProvider.autoDispose<String>((ref) => "");
final laureateDataProvider = StateNotifierProvider.autoDispose<LaureatesNotifier, LaureatesState>((ref) {
  return LaureatesNotifier(ref.watch(nobelApiProvider), ref.watch(apiOffsetProvider), ref.watch(categoryAbbreviationProvider));
});

@freezed
class LaureatesState with _$LaureatesState {

  factory LaureatesState({
    @Default([]) List<Laureate> laureatesList,
  }) = _LaureatesState;
}


class LaureatesNotifier extends StateNotifier<LaureatesState> {
  LaureatesNotifier(this.apiService, this.apiOffset, this.categoryAbbreviation) : super(LaureatesState()) {
    getData(apiOffset: apiOffset, categoryAbbreviation: categoryAbbreviation);
  }

  NobelApiService apiService;
  int apiOffset;
  String categoryAbbreviation;

  Future<void> getData ({required int apiOffset, required String categoryAbbreviation}) async {
    final apiData = await apiService.getApiData(apiOffset: apiOffset, categoryAbbreviation: categoryAbbreviation);
    final laureatesList = apiData.laureates;
    state = state.copyWith(laureatesList: laureatesList!);
  }

}




