import 'errors.dart';

class SingUpModel {
  String? type;
  String? title;
  int? status;
  Errors? errors;

  SingUpModel({this.type, this.title, this.status, this.errors});

  factory SingUpModel.fromJson(Map<String, dynamic> json) => SingUpModel(
        type: json['type'] as String?,
        title: json['title'] as String?,
        status: json['status'] as int?,
        errors: json['errors'] == null
            ? null
            : Errors.fromJson(json['errors'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'title': title,
        'status': status,
        'errors': errors?.toJson(),
      };
}
