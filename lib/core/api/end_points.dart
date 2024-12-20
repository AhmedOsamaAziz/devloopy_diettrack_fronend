class EndPoints {
  static const String _baseUrl = "https://localhost:7191/";

  static const String login = "${_baseUrl}login";
  static const String testimonil = "${_baseUrl}api/testimonil";
  static const String comment = "${_baseUrl}api/comment";
  static const String register = "${_baseUrl}register";
  static const String blog = "${_baseUrl}api/blog";
  static const String blogRecent = "${_baseUrl}api/blog/recent";
  static const String services = "${_baseUrl}api/service";
  static const String dashboard = "${_baseUrl}api/dashboard";
  static const String team = "${_baseUrl}api/team";
  static const String about = "${_baseUrl}api/about";
}

//! This is String Keys for API End Points
class ApiKeys {
  static String status = "status";
  static String title = "title";
  static String detail = "detail";
  static String errorMessage = "errorMessage";

  static String email = "email";
  static String password = "password";
  static String token = "token";
  static String id = "id";

  //! Login Model
  static String tokenType = "tokenType";
  static String accessToken = "accessToken";
  static String expiresIn = "expiresIn";
  static String refreshToken = "refreshToken";
}
