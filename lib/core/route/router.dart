import 'package:go_router/go_router.dart';
import 'package:ui/screens/admin/dashboard/widget/blog_dashboard.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/blog_dashboard',
      builder: (context, state) => const BlogDashboard(),
    ),
  ],
);

GoRouter get router => _router;
