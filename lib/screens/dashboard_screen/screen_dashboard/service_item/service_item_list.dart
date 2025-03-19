// // import 'package:flutter/material.dart';
// // import 'package:ui/constants/constants.dart';
// // import 'package:ui/constants/custom_button.dart';
// // import 'package:ui/model/service_item/service_item_details.dart';
// //
// // class ServiceItemList extends StatelessWidget {
// //   final List<ServiceItemDetails> items;
// //   final Function(ServiceItemDetails) onEdit;
// //   final Function(ServiceItemDetails) onDelete;
// //
// //   const ServiceItemList({
// //     super.key,
// //     required this.items,
// //     required this.onEdit,
// //     required this.onDelete,
// //   });
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Expanded(
// //       child: SingleChildScrollView(
// //         scrollDirection: Axis.vertical,
// //         child: DataTable(
// //           headingTextStyle: const TextStyle(color: Colors.white),
// //           headingRowColor: WidgetStateProperty.all(ColorsApp.TextColor),
// //           columns: const [
// //             DataColumn(label: Text('Service ID')),
// //             DataColumn(label: Text('Description')),
// //             DataColumn(label: Text('Description (Arabic)')),
// //             DataColumn(label: Text('Actions')),
// //           ],
// //           rows: items.map((item) => _buildDataRow(item)).toList(),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   DataRow _buildDataRow(ServiceItemDetails item) {
// //     return DataRow(cells: [
// //       DataCell(Text(item.serviceID.toString())),
// //       DataCell(SizedBox(
// //         width: 150,
// //         child: Text(item.description.toString()),
// //       )),
// //       DataCell(SizedBox(
// //         width: 150,
// //         child: Text(item.descriptionAr.toString()),
// //       )),
// //       DataCell(
// //         Row(
// //           children: [
// //             CustomButton(
// //               onPressed: () => onEdit(item),
// //               text: 'Edit',
// //               colortxt: ColorsApp.MainColorbackgraund,
// //             ),
// //             const SizedBox(width: 8),
// //             CustomButton(
// //               text: 'Delete',
// //               colortxt: ColorsApp.MainColorbackgraund,
// //               onPressed: () => onDelete(item),
// //             ),
// //           ],
// //         ),
// //       ),
// //     ]);
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:ui/constants/constants.dart';
// import 'package:ui/constants/custom_button.dart';
// import 'package:ui/model/service_item/service_item_details.dart';
//
// class ServiceItemList extends StatelessWidget {
//   final List<ServiceItemDetails> items;
//   final Function(ServiceItemDetails) onEdit;
//   final Function(ServiceItemDetails) onDelete;
//
//   const ServiceItemList({
//     super.key,
//     required this.items,
//     required this.onEdit,
//     required this.onDelete,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: DataTable(
//           headingTextStyle: const TextStyle(color: Colors.white),
//           headingRowColor: WidgetStateProperty.all(ColorsApp.TextColor),
//           columns: const [
//             DataColumn(label: Text('Service ID')),
//             DataColumn(label: Text('Description')),
//             DataColumn(label: Text('Description (Arabic)')),
//             DataColumn(label: Text('Actions')),
//           ],
//           rows: items.map((item) => _buildDataRow(item)).toList(),
//         ),
//       ),
//     );
//   }
//
//   DataRow _buildDataRow(ServiceItemDetails item) {
//     return DataRow(cells: [
//       DataCell(Text(item.serviceID.toString())),
//       DataCell(Text(item.description.toString())),
//       DataCell(Text(item.descriptionAr.toString())),
//       DataCell(
//         Row(
//           children: [
//             CustomButton(
//               onPressed: () => onEdit(item),
//               text: 'Edit',
//               colortxt: ColorsApp.MainColorbackgraund,
//             ),
//             const SizedBox(width: 8),
//             CustomButton(
//               text: 'Delete',
//               colortxt: ColorsApp.MainColorbackgraund,
//               onPressed: () => onDelete(item),
//             ),
//           ],
//         ),
//       ),
//     ]);
//   }
// }
