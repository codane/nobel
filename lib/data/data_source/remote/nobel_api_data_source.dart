import 'package:dio/dio.dart';
import 'package:nobel/common/constants.dart';
import 'package:nobel/common/dio_exceptions.dart';
import 'package:nobel/data/data_source/remote/dto/laureate_dto.dart';


class NobelApiDataSource {
  final Dio dio;

  const NobelApiDataSource({
    required this.dio,
  });

  Future<List<LaureateDto>> getLaureatesByCategory(
      {required int apiOffset, required String categoryAbbreviation}) async {
    try {
      final Response apiResponse = await dio.get(
        Constants.laureatesUrlPath,
        queryParameters: {
          'offset': apiOffset,
          'limit': Constants.nobelApiLimit,
          'nobelPrizeCategory': categoryAbbreviation
        },
      );
      final laureates = (apiResponse.data['laureates'] as List)
          .map((e) => LaureateDto.fromMap(e))
          .toList();
      return laureates;
    } on DioError catch (e) {
      throw DioExceptions.fromDioException(e).toString();
    }
  }
}
