import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';

class TestmonialsCustomButton extends StatelessWidget {
  const TestmonialsCustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: const Color(0xffEEF8D3),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/arrow_left.png'))),
            ),
          ),
          const SizedBox(width: 10),
          ...List.generate(5, (index) {
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    index == 0 ? ColorsApp.MAINCOLOR : const Color(0xffE5F5BD),
              ),
            );
          }),
          const SizedBox(width: 10),
          Card(
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: const Color(0xffEEF8D3),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/arrow_right.png'))),
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:ui/constants/constants.dart';

// class TestimonialsCustomButton extends StatelessWidget {
//   final int currentPage;
//   final int pageCount;
//   final ValueChanged<int> onPageChanged;

//   const TestimonialsCustomButton({
//     super.key,
//     required this.currentPage,
//     required this.pageCount,
//     required this.onPageChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 358,
//       height: 40,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: () {
//               if (currentPage > 0) {
//                 onPageChanged(currentPage - 1);
//               }
//             },
//             child: Card(
//               child: Container(
//                 width: 25,
//                 height: 25,
//                 decoration: BoxDecoration(
//                   color: const Color(0xffEEF8D3),
//                   borderRadius: BorderRadius.circular(10),
//                   image: const DecorationImage(
//                     image: AssetImage('assets/images/arrow_left.png'),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 10),
//           ...List.generate(pageCount, (index) {
//             return GestureDetector(
//               onTap: () {
//                 onPageChanged(index);
//               },
//               child: Container(
//                 width: 8,
//                 height: 8,
//                 margin: const EdgeInsets.symmetric(horizontal: 2),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: index == currentPage ? ColorsApp.MAINCOLOR : const Color(0xffE5F5BD),
//                 ),
//               ),
//             );
//           }),
//           const SizedBox(width: 10),
//           GestureDetector(
//             onTap: () {
//               if (currentPage < pageCount - 1) {
//                 onPageChanged(currentPage + 1);
//               }
//             },
//             child: Card(
//               child: Container(
//                 width: 30,
//                 height: 30,
//                 decoration: BoxDecoration(
//                   color: const Color(0xffEEF8D3),
//                   borderRadius: BorderRadius.circular(10),
//                   image: const DecorationImage(
//                     image: AssetImage('assets/images/arrow_right.png'),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }