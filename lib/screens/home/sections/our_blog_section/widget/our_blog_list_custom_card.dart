import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit/blog_cubit.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/custom_list_view.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/custom_grid_view.dart';

class OurBlogListCustomCard extends StatelessWidget {
  const OurBlogListCustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BlogCubit>().fetchRecentBlogs();

    if (ScreenSize.isLarge || ScreenSize.isMedium) {
      return const CustomGridView();
    } else {
      return const CustomListView();
    }
  }
}
