import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit/blog_cubit.dart';
import 'package:ui/screens/blog_page/sections/read_me/read_me_view.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_custom_card.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // context.read<BlogCubit>().fetchRecentBlogs();
    context.read<BlogCubit>().allBlogs();
    return BlocBuilder<BlogCubit, BlogState>(
      builder: (context, state) {
        if (state is BlogLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is BlogSuccess) {
          return GridView.builder(
              // physics: const NeverScrollableScrollPhysics(),
              itemCount: state.blogs.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                final blog = state.blogs[index];
                return OurBlogCustomCard(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return ReadMeView(blogList: blog);
                        }),
                      );
                    },
                    blogList: blog);
              });
        } else if (state is BlogFailure) {
          return Center(child: Text(state.errMessage));
        }
        return const Center(child: Text('No Blogs Available'));
      },
    );
  }
}
