import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  ApiServices(this._dio);
  get({required String endPoint}) async {
    final response = await _dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
