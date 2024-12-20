// import 'package:dio/dio.dart';
// import 'package:ui/core/api/api_consumer.dart';
// import 'package:ui/core/errors/server_exceptions.dart';

// class DioCunsumer extends ApiConsumer {
//   final Dio dio =
//       Dio(BaseOptions(baseUrl: 'http://devloopy-001-site1.htempurl.com/login'));

//   // DioCunsumer() {
//   //   dio.options.baseUrl = EndPoints.baseUrl;
//   //   dio.interceptors.add(ApiInterceptors());
//   //   dio.interceptors.add(LogInterceptor(
//   //     request: true,
//   //     requestHeader: true,
//   //     requestBody: true,
//   //     responseHeader: true,
//   //     responseBody: true,
//   //     error: true,
//   //     logPrint: (object) => log(object.toString()),
//   //   ));
//   // }

//   @override
//   Future delete(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     bool isFormData = false,
//   }) async {
//     try {
//       final response = await dio.delete(
//         path,
//         data: isFormData ? FormData.fromMap(data) : data,
//         queryParameters: queryParameters,
//       );
//       return response.data;
//     } on DioException catch (e) {
//       handleDioExceprions(e);
//     }
//   }

//   @override
//   Future get(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//   }) async {
//     try {
//       final response = dio.get(
//         path,
//         data: data,
//         queryParameters: queryParameters,
//       );
//       return response;
//     } on DioException catch (e) {
//       handleDioExceprions(e);
//     }
//   }

//   @override
//   Future patch(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     bool isFormData = false,
//   }) async {
//     try {
//       final response = dio.patch(
//         path,
//         data: isFormData ? FormData.fromMap(data) : data,
//         queryParameters: queryParameters,
//       );
//       return response;
//     } on DioException catch (e) {
//       handleDioExceprions(e);
//     }
//   }

//   @override
//   Future post(
//     String path, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Map<String, dynamic>? headers,
//     bool isFormData = false,
//   }) async {
//     try {
//       final response = await dio.post(
//         path,
//         data: data,
//         // queryParameters: queryParameters,
//         options: Options(headers: headers),
//       );
//       if (response.statusCode == 200) {
//         print("Doneeeeeeeeeeeeeeeeeeeeeeeeeee");
//       } else {
//         print("Errorrrrrrrrrrrrrrrrrrrrrrrr");
//       }
//       return response.data;
//     } on DioException catch (e) {
//       handleDioExceprions(e);
//     }
//   }
// }
