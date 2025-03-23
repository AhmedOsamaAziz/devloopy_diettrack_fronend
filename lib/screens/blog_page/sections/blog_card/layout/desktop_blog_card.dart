import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit/blog_cubit.dart';
import 'package:ui/screens/blog_page/sections/blog_card/widget/custom_blog_card_desktop.dart';
import 'package:ui/screens/blog_page/sections/read_me/read_me_view.dart';

class DesktopBlogCard extends StatelessWidget {
  const DesktopBlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BlogCubit>().allBlogs();

    return BlocBuilder<BlogCubit, BlogState>(
      builder: (context, state) {
        if (state is BlogLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is BlogSuccess) {

          return SizedBox(
            width: 1590,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: state.blogs.length,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                final blog = state.blogs[index];
                return CustomBlogCardDesktop(
                  blogList: blog,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return ReadMeView(blogList: blog);
                      }),
                    );
                  },
                );
              },
            ),
          );
        } else if (state is BlogFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          state as BlogNoData;
          return state.noDataMessage;
        }
      },
    );
  }
}
