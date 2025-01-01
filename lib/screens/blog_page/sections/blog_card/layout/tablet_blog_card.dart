import 'package:flutter/material.dart';
import 'package:ui/model/general/blog_card.dart';
import 'package:ui/screens/blog_page/sections/blog_card/widget/custom_blog_card.tablet.dart';

class TabletBlogCard extends StatelessWidget {
  const TabletBlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    final blogCardList = BlogCard.blogCard;

    return SizedBox(
        height: 2700,
        child: GridView.builder(
            itemCount: blogCardList.length,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 2,
              mainAxisExtent: 450,
            ),
            itemBuilder: (BuildContext context, int index) {
              return CustomBlogCardTablet(
                blogCard: blogCardList[index],
                onPressed: () {},
              );
            }));

    // Container(
    //   margin: const EdgeInsets.symmetric(horizontal: 30),
    //   color: ColorsApp.OUTLINECOLOR,
    //   child: Column(
    //     children: [
    //       // SizedBox(height: 1500, child: Gris()),
    //       Row(
    //         children: [
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/WeightLossTips1.png",
    //             titleHeader:
    //                 "10 Effective Strategies for Sustainable Weight Loss",
    //             subTitle:
    //                 "Discover proven strategies for long-term weight loss success. Learn how to create healthy habits, set achievable goals, and make sustainable lifestyle changes.",
    //           ),
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/WeightLossTips2.png",
    //             titleHeader: "The Role of Portion Control in Weight Management",
    //             subTitle:
    //                 "Learn how portion control can help you manage your weight effectively. Find practical tips for controlling portion sizes and avoiding overeating.",
    //           ),
    //         ],
    //       ),
    //       Row(
    //         children: [
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/WeightLoss22.png",
    //             titleHeader:
    //                 "10 Effective Strategies for Sustainable Weight Loss",
    //             subTitle:
    //                 "Discover proven strategies for long-term weight loss success. Learn how to create healthy habits, set achievable goals, and make sustainable lifestyle changes.",
    //           ),
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/WeightLossTips4.png",
    //             titleHeader: "The Role of Portion Control in Weight Management",
    //             subTitle:
    //                 "Learn how portion control can help you manage your weight effectively. Find practical tips for controlling portion sizes and avoiding overeating.",
    //           ),
    //         ],
    //       ),
    //       Row(
    //         children: [
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/HealthyEating1.png",
    //             titleHeader:
    //                 "10 Effective Strategies for Sustainable Weight Loss",
    //             subTitle:
    //                 "Discover proven strategies for long-term weight loss success. Learn how to create healthy habits, set achievable goals, and make sustainable lifestyle changes.",
    //           ),
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/HealthyEating2.png",
    //             titleHeader: "The Role of Portion Control in Weight Management",
    //             subTitle:
    //                 "Learn how portion control can help you manage your weight effectively. Find practical tips for controlling portion sizes and avoiding overeating.",
    //           ),
    //         ],
    //       ),
    //       Row(
    //         children: [
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/Fitness1.png",
    //             titleHeader:
    //                 "10 Effective Strategies for Sustainable Weight Loss",
    //             subTitle:
    //                 "Discover proven strategies for long-term weight loss success. Learn how to create healthy habits, set achievable goals, and make sustainable lifestyle changes.",
    //           ),
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/Fitness2.png",
    //             titleHeader: "The Role of Portion Control in Weight Management",
    //             subTitle:
    //                 "Learn how portion control can help you manage your weight effectively. Find practical tips for controlling portion sizes and avoiding overeating.",
    //           ),
    //         ],
    //       ),
    //       Row(
    //         children: [
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/MindsetandMotivation1.png",
    //             titleHeader:
    //                 "10 Effective Strategies for Sustainable Weight Loss",
    //             subTitle:
    //                 "Discover proven strategies for long-term weight loss success. Learn how to create healthy habits, set achievable goals, and make sustainable lifestyle changes.",
    //           ),
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/MindsetandMotivation2.png",
    //             titleHeader: "The Role of Portion Control in Weight Management",
    //             subTitle:
    //                 "Learn how portion control can help you manage your weight effectively. Find practical tips for controlling portion sizes and avoiding overeating.",
    //           ),
    //         ],
    //       ),
    //       Row(
    //         children: [
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/RecipesandMealPlanning1.png",
    //             titleHeader:
    //                 "10 Effective Strategies for Sustainable Weight Loss",
    //             subTitle:
    //                 "Discover proven strategies for long-term weight loss success. Learn how to create healthy habits, set achievable goals, and make sustainable lifestyle changes.",
    //           ),
    //           TabletCardOurBlog(
    //             onPressed: () {},
    //             title: 'Weight Loss Tips',
    //             image: "assets/images/RecipesandMealPlanning2.png",
    //             titleHeader: "The Role of Portion Control in Weight Management",
    //             subTitle:
    //                 "Learn how portion control can help you manage your weight effectively. Find practical tips for controlling portion sizes and avoiding overeating.",
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}

// class Gris extends StatelessWidget {
//   const Gris({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         physics: const NeverScrollableScrollPhysics(),
//         padding: EdgeInsets.zero,
//         itemCount: 10,
//         gridDelegate:
//             const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemBuilder: (context, index) {
//           return TabletCardOurBlog(
//             onPressed: () {},
//             title: 'Weight Loss Tips',
//             image: "assets/images/Recipes and Meal Planning1.png",
//             titleHeader: "10 Effective Strategies for Sustainable Weight Loss",
//             subTitle:
//                 "Discover proven strategies for long-term weight loss success. Learn how to create healthy habits, set achievable goals, and make sustainable lifestyle changes.",
//           );
//         });
//   }
// }
