import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/custom_grid_view.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_custom_card.dart';

class OurBlogListCustomCard extends StatelessWidget {
  const OurBlogListCustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BlogCubit>().fetchRecentBlogs();

    return ScreenSize.isLarge ? const CustomGridView() : const CustomListView();
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogCubit, BlogState>(builder: (context, state) {
      if (state is BlogLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is BlogSuccess) {
        return ListView.builder(
            itemCount: state.blogs.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              final blog = state.blogs[index];
              return OurBlogCustomCard(
                blogList: blog,
              );
            });
      } else if (state is BlogFailure) {
        return Center(child: Text(state.errMessage));
      } else {
        state as BlogNoData;
        return state.noDataMessage;
      }
    });
  }
}
