import 'package:dio/dio.dart';

class ApiInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['token'] = 'token';
    options.headers['Accept-Language'] = 'ar';
    options.headers['Accept-Language'] = 'en';
    super.onRequest(options, handler);
  }
}
