// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/cubits/blog_cubit/blog_dashboard_cubit/blog_dashboard.state.dart';
// import 'package:ui/model/blog/blog_create.dart';
// import 'package:ui/model/blog/blog_list.dart';
// import 'package:ui/services/blog_service/blog_service.dart';

// class BlogDashboardCubit extends Cubit<BlogDashboardState> {
//   final BlogService _blogService;

//   BlogDashboardCubit(this._blogService) : super(BlogDashboardInitial());

//   void fetchBlogs() async {
//     emit(BlogDashboardLoading());
//     final response = await _blogService.getAllBlogs();

//     if (response.status == ResponseStatus.success) {
//       emit(BlogDashboardLoaded(response.obj as List<BlogList>));
//     } else {
//       emit(BlogDashboardError(response.message ?? 'Failed to fetch blogs'));
//     }
//   }

//   Future<void> createBlogsDashboard(BlogCreate newBlog) async {
//     emit(BlogDashboardLoading());

//     try {
//       var blogService = BlogService();
//       var response = await blogService.createNewBlogs(newBlog);

//       if (response.status == ResponseStatus.success) {
//         // بعد إنشاء المدونة بنجاح، استدعِ دالة استرجاع جميع المدونات لتحديث القائمة:
//         fetchBlogs();
//       } else {
//         emit(BlogDashboardError(
//             response.message ?? 'An error occurred while creating the blog'));
//       }
//     } catch (e) {
//       emit(BlogDashboardError('An error occurred while creating the blog: $e'));
//     }
//   }
// }
