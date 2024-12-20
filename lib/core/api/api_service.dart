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
      log("Status API Call Started");
      var response = await _dio.request(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          method: method.name,
          headers: headers,
        ),
      );

      log(response.statusCode.toString());

      return GenericResponse(
          obj: response.data,
          code: response.statusCode!,
          status: response.statusCode.toString()[0] == '2'
              ? ResponseStatus.success
              : ResponseStatus.fail,
          message: response.statusMessage);
    } catch (e) {
      throw 'Network errror: $e';
    }
  }

//   final Dio dio;

//   ApiServices(this.dio);

//   Future<dynamic> post({
//     required String endPoint,
//     required  Map data,
//     // required headers,
//   }) async {
//     var response = await dio.post(
//       "$baseUrl$endPoint",
//       data: data,
//     );

//     return response;
//   }

//   Future<Map<String, dynamic>> postBlog(
//       {required endPoint, required data, required headers}) async {
//     var response = await dio.post(
//       "$baseUrl$endPoint",
//       data: data,
//       // options: Options(headers: {}),
//     );

//     return response.data;
//   }
}
