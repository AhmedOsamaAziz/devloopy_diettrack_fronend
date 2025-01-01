// import 'package:ui/core/api/api_service.dart';
// import 'package:ui/core/api/end_points.dart';
// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/model/blog/blog_create.dart';
// import 'package:ui/model/blog/blog_list.dart';
// import 'package:ui/model/blog/blog_update.dart';
// import 'package:ui/services/blog_service/blog_service.dart';

// class BlogServiceImp implements BlogService {
//   Future<GenericResponse> getAllBlogs() async {
//     try {
//       var _apiService = ApiService();
//       final response = await _apiService.makeRequest(
//         ApiMethod.get,
//         EndPoints.blog,
//       );
//       List<BlogList> blogs = (response.obj as List)
//           .map((blogJson) => BlogList.fromJson(blogJson))
//           .toList();
//       return GenericResponse(
//           status: ResponseStatus.success, obj: blogs, code: 200);
//     } on Exception catch (e) {
//       return GenericResponse(
//         status: ResponseStatus.fail,
//         message: e.toString(),
//         code: 500,
//       );
//     }
//   }
