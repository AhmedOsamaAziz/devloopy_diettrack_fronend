class Errors {
  List<String>? duplicateUserName;
  List<String>? duplicateEmail;

  Errors({this.duplicateUserName, this.duplicateEmail});

  factory Errors.fromJson(Map<String, dynamic> json) => Errors(
        duplicateUserName: json['DuplicateUserName'] as List<String>?,
        duplicateEmail: json['DuplicateEmail'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'DuplicateUserName': duplicateUserName,
        'DuplicateEmail': duplicateEmail,
      };
}
