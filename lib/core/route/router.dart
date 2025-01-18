import 'package:go_router/go_router.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/blog_dashboard.dart';
 
final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/blog_dashboard',
      builder: (context, state) => const BlogDashboard(),
    ),
  ],
);

GoRouter get router => _router;
