import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with API server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API server');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error timeout with API server');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate timeout with API server');

      case DioExceptionType.cancel:
        return ServerFailure('Cancel with API server');

      case DioExceptionType.unknown:
        if (dioError.error is SocketException) {
          return ServerFailure('No Internet connection');
        }

        return ServerFailure('Unexpected error with API server');

      default:
        return ServerFailure(
            'Oppppppppps something   wrong. Please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found. Please try again!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error. Please try again!');
    } else {
      return ServerFailure('Something went wrong. Please try again!');
    }
  }
}
