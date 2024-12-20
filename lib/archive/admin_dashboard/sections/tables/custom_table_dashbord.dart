// import 'package:flutter/material.dart';
// import 'package:ui/Constants/constants.dart';
// import 'package:ui/screens/admin_dashboard/sections/tables/add_item.dart';
// import 'package:ui/screens/admin_dashboard/widget/custom_pagination.dart';
// import 'package:ui/widgets/custom_button.dart';
// import 'list_header_table.dart';
// import 'list_view_table_item.dart';

// class CustomTabelsDashbord extends StatelessWidget {
//   const CustomTabelsDashbord({super.key});
//   // final DataTableSource _data = MyDate();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const SizedBox(height: 30),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 50.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text(
//                 'Blog',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               CustomButton(
//                   colorbtn: ColorsApp.SecondaryColor,
//                   text: 'Add Item',
//                   onPressed: () {
//                     Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (context) {
//                       return const AddItem();
//                     }));
//                   }),
//             ],
//           ),
//         ),
//         const SizedBox(height: 30),
//         const ListHeaderTables(),
//         const ListViewItem(),
//         const SizedBox(height: 30),
//         const CustomPaginationButtonAdmin(),
//         const SizedBox(height: 30),
//       ],
//     );
//   }
// }
