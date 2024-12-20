enum ResponseStatus { success, fail }

class GenericResponse {
  String? message;
  var obj;
  int code;
  ResponseStatus status;

  GenericResponse({
    this.message,
    this.obj,
    required this.code,
    required this.status,
  });
}
