import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit.dart';

import 'our_blog_custom_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogCubit, BlogState>(builder: (context, state) {
      if (state is BlogLoading) {
        return const Center(
          child: CircularProgressIndicator()
        );
      } else if (state is BlogSuccess) {
        return SizedBox(
          child: ListView.builder(
            //  physics: const NeverScrollableScrollPhysics(),
            itemCount: state.blogs.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              final blog = state.blogs[index];
              return OurBlogCustomCard(blogList: blog);
            },
          ),
        );
      } else if (state is BlogFailure) {
        return Center(
          child: Text('Error: ${state.errMessage}'),
        );
      } else {
        return const Center(
          child: Text('Unknown state'),
        );
      }
    });
  }
}