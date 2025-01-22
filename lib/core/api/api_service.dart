import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ui/core/api/generic_response.dart';

enum ApiMethod { get, post, put, delete }

class ApiService {
  final Dio _dio;

  ApiService() : _dio = Dio();

  Future<GenericResponse> makeRequest(
    ApiMethod method,
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Map<String, dynamic>? headers,
  }) async {
    try {
      var response = await _dio.request(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          method: method.name,
          headers: headers,
        ),
      );

      return GenericResponse(
          obj: response.data,
          code: response.statusCode!,
          status: response.statusCode.toString()[0] == '2'
              ? ResponseStatus.success
              : ResponseStatus.fail,
          message: response.statusMessage);
    } on DioException catch (e) {
      log('Network error: ${e.message}');
      throw 'Network error: ${e.message}';
    } catch (e) {
      log('Unexpected error: $e');
      throw 'Unexpected error: $e';
    }
  }
}
