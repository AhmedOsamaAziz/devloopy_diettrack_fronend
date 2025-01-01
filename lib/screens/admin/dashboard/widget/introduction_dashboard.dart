// import 'package:flutter/material.dart';

// class IntroductionDashboard extends StatefulWidget {
//   const IntroductionDashboard({super.key});

//   @override
//   State<IntroductionDashboard> createState() => _IntroductionDashboardState();
// }

// final List<Map<String, String>> _rows = [

// ];

// class _IntroductionDashboardState extends State<IntroductionDashboard> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: SizedBox(
//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: () {}, //=> _openForm(),
//               child: const Text("Add Row"),
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 child: DataTable(
//                   sortColumnIndex: 0,
//                   sortAscending: true,
//                   dividerThickness: 2,
//                   showBottomBorder: true,
//                   columnSpacing: 100,
//                   columns: const [
//                     DataColumn(label: Text("id"), numeric: true),
//                     DataColumn(label: Text("title")),
//                     DataColumn(label: Text("titleAr")),
//                     DataColumn(label: Text("description")),
//                   ],
//                   rows: _rows.asMap().entries.map((entry) {
//                     final index = entry.key;
//                     final row = entry.value;

//                     return DataRow(cells: [
//                       DataCell(Text(row['id']!)),
//                       DataCell(Text(row['title']!)),
//                       DataCell(Text(row['titleAr']!)),
//                       DataCell(Text(row['description']!)),
//                       DataCell(
//                         Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             ElevatedButton(
//                               onPressed: () {}, // => _openForm(index: index),
//                               child: const Text('Edit'),
//                             ),
//                             const SizedBox(width: 8),
//                             ElevatedButton(
//                               onPressed: () {}, //=> _deleteRow(index),
//                               child: const Text('Delete'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ]);
//                   }).toList(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
