import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nobel/models/laureates_response.dart';


final nobelApiProvider = Provider.autoDispose<NobelApiService>((ref) => NobelApiService());

class NobelApiService {
  final Dio _dio = Dio();
  final String _baseUrl = "https://api.nobelprize.org/2.1/laureates";
  final int _limit = 10;

  Future<LaureatesResponse> getApiData({required int apiOffset, required String categoryAbbreviation}) async {
    try {
      final apiResponse = await _dio.get("$_baseUrl?offset=$apiOffset&limit=$_limit&nobelPrizeCategory=$categoryAbbreviation");
      final LaureatesResponse laureatesResponse = LaureatesResponse.fromJson(apiResponse.data);
      return laureatesResponse;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    
  }
}

