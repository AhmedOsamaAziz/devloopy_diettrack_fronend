class AuthModel {
  final String tokenType;
  final String accessToken;
  final int expiresIn;
  final String refreshToken;

  AuthModel({
    required this.tokenType,
    required this.accessToken,
    required this.expiresIn,
    required this.refreshToken,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      tokenType: json['tokenType'],
      accessToken: json['accessToken'],
      expiresIn: json['expiresIn'],
      refreshToken: json['refreshToken'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tokenType': tokenType,
      'accessToken': accessToken,
      'expiresIn': expiresIn,
      'refreshToken': refreshToken,
    };
  }
}
