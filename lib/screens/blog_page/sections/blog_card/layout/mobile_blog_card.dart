// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ui/cubits/blog_cubit/blog_cubit/blog_cubit.dart';
// import 'package:ui/screens/blog_page/sections/blog_card/widget/custom_blog_card_mobile.dart';
// import 'package:ui/screens/blog_page/sections/read_me/read_me_view.dart';

// class MobileBlogCard extends StatelessWidget {
//   const MobileBlogCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     context.read<BlogCubit>().allBlogs();

//     return BlocBuilder<BlogCubit, BlogState>(
//       builder: (context, state) {
//         if (state is BlogLoading) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (state is BlogSuccess) {
//           return SizedBox(
//             child: CustomScrollView(
//               // physics: const NeverScrollableScrollPhysics(),
//               slivers: [
//                 SliverList(
//                   delegate: SliverChildBuilderDelegate(
//                     childCount: state.blogs.length,
//                     (BuildContext context, int index) {
//                       final blog = state.blogs[index];
//                       return CustomBlogCardMobile(
//                         onPressed: () {
//                           Navigator.of(context).push(
//                             MaterialPageRoute(builder: (context) {
//                               return ReadMeView(blogList: blog);
//                             }),
//                           );
//                         },
//                         blogList: blog,
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           );
//         } else if (state is BlogFailure) {
//           return Center(child: Text(state.errMessage));
//         } else {
//           state as BlogNoData;
//           return state.noDataMessage;
//         }
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ui/cubits/blog_cubit/blog_cubit/blog_cubit.dart';
// import 'package:ui/screens/blog_page/sections/blog_card/widget/custom_blog_card_mobile.dart';
// import 'package:ui/screens/blog_page/sections/read_me/read_me_view.dart';

// class MobileBlogCard extends StatelessWidget {
//   const MobileBlogCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BlogCubit, BlogState>(
//       builder: (context, state) {
//         if (state is BlogLoading) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (state is BlogSuccess) {
//           if (state.blogs.isEmpty) {
//             return const Center(child: Text('No Blogs Available'));
//           }
//           return SizedBox(
//             height: MediaQuery.of(context).size.height, // تحديد ارتفاع محدود
//             child: ListView.builder(
//               physics: const BouncingScrollPhysics(),
//               itemCount: state.blogs.length,
//               itemBuilder: (context, index) {
//                 final blog = state.blogs[index];
//                 return CustomBlogCardMobile(
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => ReadMeView(blogList: blog),
//                       ),
//                     );
//                   },
//                   blogList: blog,
//                 );
//               },
//             ),
//           );
//         } else if (state is BlogFailure) {
//           return Center(child: Text(state.errMessage));
//         }
//         return const Center(child: Text('No Blogs Available'));
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit/blog_cubit.dart';
import 'package:ui/screens/blog_page/sections/blog_card/widget/custom_blog_card_mobile.dart';
import 'package:ui/screens/blog_page/sections/read_me/read_me_view.dart';

class MobileBlogCard extends StatelessWidget {
  const MobileBlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogCubit, BlogState>(
      builder: (context, state) {
        if (state is BlogLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is BlogSuccess) {
          if (state.blogs.isEmpty) {
            return const Center(child: Text('No Blogs Available'));
          }
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.blogs.length,
                  itemBuilder: (context, index) {
                    final blog = state.blogs[index];
                    return CustomBlogCardMobile(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ReadMeView(blogList: blog),
                          ),
                        );
                      },
                      blogList: blog,
                    );
                  },
                ),
              ),
            ],
          );
        } else if (state is BlogFailure) {
          return Center(child: Text(state.errMessage));
        }
        return const Center(child: Text('No Blogs Available'));
      },
    );
  }
}
