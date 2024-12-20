import 'package:ui/core/api/end_points.dart';

class ErrorModel {
  final String title;
  final int status;
  final String detail;

  ErrorModel({
    required this.title,
    required this.status,
    required this.detail,
  });
  factory ErrorModel.fromJson(Map<String, dynamic> jsonDate) {
    return ErrorModel(
      title: jsonDate[ApiKeys.title],
      status: jsonDate[ApiKeys.status],
      detail: jsonDate[ApiKeys.detail],
    );
  }
}
