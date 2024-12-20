class LoginModel {
  String? tokenType;
  String? accessToken;
  int? expiresIn;
  String? refreshToken;

  LoginModel({
    this.tokenType,
    this.accessToken,
    this.expiresIn,
    this.refreshToken,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        tokenType: json['tokenType'] as String?,
        accessToken: json['accessToken'] as String?,
        expiresIn: json['expiresIn'] as int?,
        refreshToken: json['refreshToken'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'tokenType': tokenType,
        'accessToken': accessToken,
        'expiresIn': expiresIn,
        'refreshToken': refreshToken,
      };
}
