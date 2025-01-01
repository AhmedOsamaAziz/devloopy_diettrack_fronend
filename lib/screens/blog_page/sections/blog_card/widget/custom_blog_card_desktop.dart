import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/core/assets.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/widgets/custom_text.dart';

class CustomBlogCardDesktop extends StatelessWidget {
  const CustomBlogCardDesktop(
      {super.key, this.onPressed, required this.blogList});

  final BlogList blogList; // Make nullable
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogCubit, BlogState>(
      builder: (context, state) {
        if (state is BlogLoading) {
          return const Center(
            child: CircularProgressIndicator()
          );
        } else if (state is BlogSuccess) {
          final blog = state.blogs.isNotEmpty ? state.blogs[0] : null;

          if (blog == null) {
            return const Center(
              child: Text('No Blogs Available',
                  style: TextStyle(color: ColorsApp.MAINCOLOR)),
            );
          }

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              border: Border.all(width: 0.2, color: ColorsApp.SecondaryColor),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      CustomText(text: blogList.title),
                      const SizedBox(
                        width: 170,
                        child: Divider(
                          thickness: 2,
                          color: ColorsApp.SecondaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    child: blogList.imageUrl == null
                        ? null
                        : Image.network(
                            blogList.imageUrl!,
                            // height: 185,
                            errorBuilder: (context, error, stackTrace) {
                              return AspectRatio(
                                aspectRatio: 1.5,
                                child: Image.asset(
                                  Assets.imagesFitness2,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: blogList.description,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(height: 10),
                            CustomText(
                              text: blogList.description,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    CustomButtonReadMe(onPressed: onPressed),
                  ],
                )
              ],
            ),
          );
        } else if (state is BlogFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        }
        return const SizedBox(
          child: Text('No Data'),
        );
      },
    );
  }
}

class CustomButtonReadMe extends StatelessWidget {
  const CustomButtonReadMe({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(20),
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
      color: ColorsApp.SecondaryColor,
      onPressed: onPressed,
      child: const Text(
        'Read More',
        style: TextStyle(
          color: Colors.black,
          fontFamily: FontsApp.fontFamilyUrbanist,
          fontWeight: FontWeight.w800,
          fontSize: 12,
        ),
      ),
    );
  }
}
