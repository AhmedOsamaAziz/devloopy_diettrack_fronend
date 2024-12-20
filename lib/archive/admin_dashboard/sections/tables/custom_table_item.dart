// // import 'package:flutter/material.dart';
// // import 'package:ui/Constants/constants.dart';
// // import 'package:ui/screens/admin_dashboard/sections/tables/confirm_delete.dart';
// // import 'package:ui/widgets/custom_button.dart';

// // class CustomHTableItem extends StatefulWidget {
// //   const CustomHTableItem({
// //     super.key,
// //   });

// //   @override
// //   State<CustomHTableItem> createState() => _CustomHTableItemState();
// // }

// // class _CustomHTableItemState extends State<CustomHTableItem> {
// //   final List<TableRow> _rows = [];

// //   final _col1Controller = TextEditingController();

// //   final _col2Controller = TextEditingController();

// //   final _col3Controller = TextEditingController();

// //   final _col4Controller = TextEditingController();

// //   int? _editingIndex;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       children: [
// //         Expanded(
// //           child: Center(
// //             child: TextField(
// //               controller: _col1Controller,
// //               decoration: InputDecoration(
// //                 filled: true,
// //                 hintText: 'id',
// //                 fillColor: const Color(0x0fffffff),
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(4.0),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //         Expanded(
// //           flex: 2,
// //           child: Center(
// //             child: TextField(
// //               controller: _col2Controller,
// //               decoration: InputDecoration(
// //                 filled: true,
// //                 hintText: 'Enter The Title',
// //                 fillColor: const Color(0x0fffffff),
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(4.0),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //         Expanded(
// //           flex: 2,
// //           child: Center(
// //             child: TextField(
// //               controller: _col3Controller,
// //               decoration: InputDecoration(
// //                 filled: true,
// //                 hintText: 'Enter The Title',
// //                 fillColor: const Color(0x0fffffff),
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(4.0),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //         Expanded(
// //           flex: 2,
// //           child: Center(
// //             child: TextField(
// //               controller: _col4Controller,
// //               decoration: InputDecoration(
// //                 filled: true,
// //                 hintText: 'Enter The Descriptions',
// //                 fillColor: const Color(0x0fffffff),
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(4.0),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //         Expanded(
// //           flex: 2,
// //           child: Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 30.0),
// //             child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   CustomButton(
// //                       colorbtn: ColorsApp.SecondaryColor,
// //                       text: 'Edit',
// //                       onPressed: () {}),
// //                   CustomButton(
// //                     colorbtn: ColorsApp.SecondaryColor,
// //                     text: 'Delete',
// //                     onPressed: () => confirmDelete(context),
// //                   ),
// //                 ]),
// //           ),
// //         )
// //       ],
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:ui/Constants/constants.dart';
// import 'package:ui/screens/admin_dashboard/sections/tables/confirm_delete.dart';
// import 'package:ui/widgets/custom_button.dart';

// class CustomHTableItem extends StatefulWidget {
//   const CustomHTableItem({
//     super.key,
//   });

//   @override
//   State<CustomHTableItem> createState() => _CustomHTableItemState();
// }

// class _CustomHTableItemState extends State<CustomHTableItem> {
//   final List<Map<String, String>> _rows =
//       []; // Use a list of maps to store row data

//   final _col1Controller = TextEditingController();
//   final _col2Controller = TextEditingController();
//   final _col3Controller = TextEditingController();
//   final _col4Controller = TextEditingController();

//   int? _editingIndex; // To keep track of the editing row index

//   // Function to handle saving the data (add or update)
//   void _saveData() {
//     final String col1 = _col1Controller.text;
//     final String col2 = _col2Controller.text;
//     final String col3 = _col3Controller.text;
//     final String col4 = _col4Controller.text;

//     if (_editingIndex == null) {
//       // If no row is being edited, add new data
//       setState(() {
//         _rows.add({
//           'id': col1,
//           'title': col2,
//           'titleAr': col3,
//           'description': col4,
//         });
//         _clearTextFields();
//       });
//     } else {
//       // If a row is being edited, update its data
//       setState(() {
//         _rows[_editingIndex!] = {
//           'id': col1,
//           'title': col2,
//           'titleAr': col3,
//           'description': col4,
//         };
//         _editingIndex = null;
//         _clearTextFields();
//       });
//     }
//   }

//   // Function to clear text fields after saving
//   void _clearTextFields() {
//     _col1Controller.clear();
//     _col2Controller.clear();
//     _col3Controller.clear();
//     _col4Controller.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   controller: _col1Controller,
//                   decoration: InputDecoration(
//                     filled: true,
//                     hintText: 'id',
//                     fillColor: const Color(0x0fffffff),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(4.0),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Center(
//                 child: TextField(
//                   controller: _col2Controller,
//                   decoration: InputDecoration(
//                     filled: true,
//                     hintText: 'Enter The Title',
//                     fillColor: const Color(0x0fffffff),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(4.0),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Center(
//                 child: TextField(
//                   controller: _col3Controller,
//                   decoration: InputDecoration(
//                     filled: true,
//                     hintText: 'Enter The TitleAr',
//                     fillColor: const Color(0x0fffffff),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(4.0),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Center(
//                 child: TextField(
//                   controller: _col4Controller,
//                   decoration: InputDecoration(
//                     filled: true,
//                     hintText: 'Enter The Descriptions',
//                     fillColor: const Color(0x0fffffff),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(4.0),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomButton(
//                       colorbtn: ColorsApp.SecondaryColor,
//                       text: 'Save',
//                       onPressed: _saveData,
//                     ),
//                     CustomButton(
//                       colorbtn: ColorsApp.SecondaryColor,
//                       text: 'Edit',
//                       onPressed: () {
//                         // Implement edit functionality
//                       },
//                     ),
//                     CustomButton(
//                       colorbtn: ColorsApp.SecondaryColor,
//                       text: 'Delete',
//                       onPressed: () => confirmDelete(context),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         // Displaying the rows
//         Expanded(
//           child: ListView.builder(
//             itemCount: _rows.length,
//             itemBuilder: (context, index) {
//               final row = _rows[index];
//               return ListTile(
//                 title: Text(row['title']!),
//                 subtitle: Text(row['description']!),
//                 trailing: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.edit),
//                       onPressed: () {
//                         // Set text fields to the values of the row being edited
//                         _col1Controller.text = row['id']!;
//                         _col2Controller.text = row['title']!;
//                         _col3Controller.text = row['titleAr']!;
//                         _col4Controller.text = row['description']!;
//                         setState(() {
//                           _editingIndex = index; // Set the editing index
//                         });
//                       },
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.delete),
//                       onPressed: () {
//                         setState(() {
//                           _rows.removeAt(index); // Delete the row
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
