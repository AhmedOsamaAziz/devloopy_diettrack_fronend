import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_custom_card.dart';

class OurBlogListCustomCard extends StatelessWidget {
  const OurBlogListCustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BlogCubit>().fetchRecentBlogs();
    // final List cardOurBlog = CardOurBlogModel.cardFeature;

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
        log('=======================HomeBlogLoading========================');

        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is BlogSuccess) {
        log('=======================HomeBlogSuccess========================');

        return ListView.builder(
            itemCount: state.blogs.length,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              final blog = state.blogs[index];
              return OurBlogCustomCard(
                blogList: blog,
              );
            });
      } else if (state is BlogFailure) {
        log('=======================HomeBlogFailure========================');
        return Center(child: Text(state.errMessage));
      } else {
        state as BlogNoData;
        return state.noDataMessage;
      }
    });
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogCubit, BlogState>(
      builder: (context, state) {
        if (state is BlogLoading) {
          log('=======================HomeBlogLoadingGridView========================');

          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is BlogSuccess) {
          log('=======================HomeBlogSuccessGridView========================');

          return GridView.builder(
              itemCount: state.blogs.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 5,
                mainAxisExtent: 720,
              ),
              itemBuilder: (BuildContext context, int index) {
                final blog = state.blogs[index];
                return OurBlogCustomCard(
                  blogList: blog,
                );
              });
        } else if (state is BlogFailure) {
          log('=======================HomeBlogFailureGridView========================');
          return Center(child: Text(state.errMessage));
        }
        return const Center(child: Text('No Blogs Available'));
      },
    );
  }
}
