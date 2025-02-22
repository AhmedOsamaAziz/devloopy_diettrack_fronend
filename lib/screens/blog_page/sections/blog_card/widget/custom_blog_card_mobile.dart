// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/cubits/blog_cubit/blog_cubit/blog_cubit.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/shared/custom_text.dart';
 
class CustomBlogCardMobile extends StatelessWidget {
  const CustomBlogCardMobile({
    super.key,
    required this.blogList,
    this.onPressed,
  });

  // final BlogCard blogCard;
  final BlogList blogList;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogCubit, BlogState>(
      builder: (context, state) {
        if (state is BlogLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is BlogSuccess) {
          final blog = state.blogs.isNotEmpty ? state.blogs[0] : null;

          if (blog == null) {
            return const Center(
              child: Text('No Blogs Available',
                  style: TextStyle(color: ColorsApp.MAINCOLOR)),
            );
          }
          return Container(
            decoration: BoxDecoration(
                border:
                    Border.all(width: 0.2, color: ColorsApp.SecondaryColor)),
            padding:
                const EdgeInsets.only(bottom: 20, right: 20, left: 30, top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                CustomText(text: blogList.title),
                const SizedBox(
                    width: 170,
                    child:
                        Divider(thickness: 2, color: ColorsApp.SecondaryColor)),
                const SizedBox(height: 20),
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
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        text: blogList.description,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomText(
                               maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        text: blogList.descriptionAr,
                        fontSize: 12,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                CustomButtonReadMe(onPressed: onPressed),
              ],
            ),
          );
        } else if (state is BlogFailure) {
          return Center(child: Text(state.errMessage));
        }
        return const SizedBox(
          child: Text('No Data'),
        );
      },
    );
  }
}

class CustomButtonReadMe extends StatelessWidget {
  const CustomButtonReadMe({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.all(5),
        height: 30,
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
        ));
  }
}
