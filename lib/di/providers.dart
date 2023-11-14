
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nobel/common/constants.dart';
import 'package:nobel/data/data_source/remote/nobel_api_data_source.dart';
import 'package:nobel/data/repository/nobel_repository_impl.dart';
import 'package:nobel/domain/use_case/get_laureates_use_case.dart';
import 'package:nobel/presentation/controller/laureates_controller.dart';
import 'package:nobel/presentation/laureates_state.dart';

final apiOffsetProvider = StateProvider.autoDispose<int>((ref) => 0);
final categoryAbbreviationProvider = StateProvider.autoDispose<String>((ref) => "");
final laureateDataProvider = StateNotifierProvider.autoDispose<LaureatesController, LaureatesState>((ref) {
  return LaureatesController(ref.watch(useCaseProvider), ref.watch(apiOffsetProvider), ref.watch(categoryAbbreviationProvider));
});

final dioProvider = Provider((ref) => Dio(BaseOptions(baseUrl: Constants.baseUrl)));
final apiDataSourceProvider = Provider((ref) => NobelApiDataSource(dio: ref.read(dioProvider)));
final repositoryProvider = Provider((ref) => NobelRepositoryImpl(nobelApiSource: ref.read(apiDataSourceProvider)));
final useCaseProvider = Provider((ref) => GetLaureatesUseCase(repository: ref.read(repositoryProvider)));
