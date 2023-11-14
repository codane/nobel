import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String _exceptionMessage;

  DioExceptions.fromDioException(DioError dioException) {
    switch (dioException.type) {
      case DioErrorType.cancel:
        _exceptionMessage = "Request to API server was cancelled";
        break;
      case DioErrorType.unknown:
        if (dioException.message!.contains("SocketException")) {
          _exceptionMessage = 'No Internet';
          break;
        }
        _exceptionMessage = "Unexpected error occurred";
        break;
      default:
        _exceptionMessage = "Something went wrong";
        break;
    }
  }

  @override
  String toString() => _exceptionMessage;
}