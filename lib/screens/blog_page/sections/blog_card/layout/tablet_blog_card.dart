
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit.dart';
import 'package:ui/screens/blog_page/sections/blog_card/widget/custom_blog_card.tablet.dart';
import 'package:ui/screens/blog_page/sections/read_me/read_me_view.dart';

class TabletBlogCard extends StatelessWidget {
  const TabletBlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BlogCubit>().allBlogs();
    return BlocBuilder<BlogCubit, BlogState>(
      builder: (context, state) {
        if (state is BlogLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is BlogSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.8,
            width: 850,
            child: GridView.builder(
              itemCount: state.blogs.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 2,
                mainAxisExtent: 460,
              ),
              itemBuilder: (BuildContext context, int index) {
                final blog = state.blogs[index];
                return CustomBlogCardTablet(
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
          // Handle the BlogNoData state.
          final noDataState = state as BlogNoData;
          return Center(child: Text(noDataState.noDataMessage as String));
        }
      },
    );
  }
}
