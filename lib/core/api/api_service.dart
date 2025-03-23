import 'package:dio/dio.dart';
import 'package:ui/core/api/generic_response.dart';

enum ApiMethod { get, post, put, delete }

class ApiService {
  final Dio _dio;

  ApiService()
      : _dio = Dio()
          ..interceptors
              .add(LogInterceptor(requestBody: true, responseBody: true));
  Future<GenericResponse> makeRequest(
    ApiMethod method,
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Map<String, dynamic>? headers,
  }) async {
    try {
      // print("Making API request to: $endpoint"); // Debugging
      // print("Request data: $data");
      var response = await _dio.request(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          method: method.name,
          headers: headers,
        ),
      );
      // print("API Response: ${response.data}");

      return GenericResponse(
          obj: response.data,
          code: response.statusCode!,
          status: response.statusCode.toString()[0] == '2'
              ? ResponseStatus.success
              : ResponseStatus.fail,
          message: response.statusMessage);
    } on DioException catch (e) {
      // log('Dio exception: ${e.message}');
      if (e.response != null) {
        // print('Status Code: ${e.response!.statusCode}'); // Debugging
        // print('Response Data: ${e.response!.data}');
        // log('Status Code: ${e.response!.statusCode}');
        // log('Response Data: ${e.response!.data}');
      }
      throw 'Network error: ${e.message}';
    }
  }
}
