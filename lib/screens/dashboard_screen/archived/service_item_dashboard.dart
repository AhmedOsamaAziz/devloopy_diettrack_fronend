// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:ui/constants/constants.dart';
// import 'package:ui/constants/custom_button.dart';
// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/model/service_item/service_item_create.dart';
// import 'package:ui/model/service_item/service_item_details.dart';
// import 'package:ui/services/service_plan_item/service_plan_item_implmentation.dart';
//
// class ServiceItemDashboard extends StatefulWidget {
//   const ServiceItemDashboard({super.key});
//
//   @override
//   _ServiceItemDashboardState createState() => _ServiceItemDashboardState();
// }
//
// class _ServiceItemDashboardState extends State<ServiceItemDashboard> {
//   final List<ServiceItemDetails> _rows = [];
//   final ServicePlanImplementation servicePlanItemImplmentation =
//       ServicePlanImplementation();
//   bool _isLoading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchServiceItems();
//   }
//
//   Future<void> _fetchServiceItems() async {
//     setState(() => _isLoading = true);
//     try {
//       final response = await servicePlanItemImplmentation.getListService();
//       if (response.status == ResponseStatus.success) {
//         setState(() {
//           _rows.clear();
//           _rows.addAll(response.obj);
//         });
//       } else {
//         log("Failed to fetch services: ${response.message}");
//       }
//     } catch (e) {
//       log("Error fetching services: $e");
//     } finally {
//       setState(() => _isLoading = false);
//     }
//   }
//
//   Future<void> _openAddForm() async {
//     // Show the add form and wait for the new service item details.
//     final newItem = await showDialog<ServiceItemCreate>(
//       context: context,
//       builder: (context) => AddServiceItemForm(),
//     );
//
//     if (newItem != null) {
//       setState(() => _isLoading = true);
//       try {
//         // Call the API to create the new service item.
//         final response = await servicePlanItemImplmentation.createService(
//             newItem, newItem.serviceID);
//
//         if (response.status == ResponseStatus.success && response.obj != null) {
//           // Add the new service item to the list.
//           Navigator.of(context).pop();
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//                 backgroundColor: Colors.green[700],
//                 content: const Text('service item added successfully!')),
//           );
//           setState(() {
//             _rows.add(response.obj);
//           });
//
//           await _fetchServiceItems();
//         } else {
//           log("Failed to add service item: ${response.message}");
//         }
//       } catch (e) {
//         log("Error adding service item: $e");
//       } finally {
//         setState(() => _isLoading = false);
//       }
//     }
//   }
//
//   Future<void> _openEditForm(ServiceItemDetails item) async {
//     final updatedItem = await showDialog<ServiceItemDetails>(
//       context: context,
//       builder: (context) => EditServiceItemForm(item: item),
//     );
//
//     if (updatedItem != null) {
//       setState(() {
//         final index = _rows.indexWhere(
//             (element) => element.serviceID == updatedItem.serviceID);
//         if (index != -1) {
//           _rows[index] = updatedItem;
//         }
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(25),
//       color: ColorsApp.OUTLINECOLOR,
//       child: Column(
//         children: [
//           CustomButton(
//             onPressed: _openAddForm,
//             text: 'Add Service Item',
//             colortxt: ColorsApp.MainColorbackgraund,
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: _isLoading
//                 ? const Center(child: CircularProgressIndicator())
//                 : SingleChildScrollView(
//                     scrollDirection: Axis.vertical,
//                     child: DataTable(
//                       headingTextStyle: const TextStyle(color: Colors.white),
//                       headingRowColor:
//                           WidgetStateProperty.all(ColorsApp.TextColor),
//                       columns: const [
//                         DataColumn(label: Text('Service ID')),
//                         DataColumn(label: Text('Description')),
//                         DataColumn(label: Text('Description (Arabic)')),
//                         DataColumn(label: Text('Actions')),
//                       ],
//                       rows: _rows.map((row) {
//                         return DataRow(cells: [
//                           DataCell(Text(row.serviceID.toString())),
//                           DataCell(SizedBox(
//                               width: 150,
//                               child: Text(row.description.toString()))),
//                           DataCell(SizedBox(
//                               width: 150,
//                               child: Text(row.descriptionAr.toString()))),
//                           DataCell(
//                             Row(
//                               children: [
//                                 CustomButton(
//                                   onPressed: () => _openEditForm(row),
//                                   text: 'Edit',
//                                   colortxt: ColorsApp.MainColorbackgraund,
//                                 ),
//                                 const SizedBox(width: 8),
//                                 CustomButton(
//                                   text: 'Delete',
//                                   colortxt: ColorsApp.MainColorbackgraund,
//                                   onPressed: () async {
//                                     final confirm = await showDialog<bool>(
//                                       context: context,
//                                       builder: (BuildContext context) {
//                                         return AlertDialog(
//                                           title: const Text('Confirm Deletion'),
//                                           content: const Text(
//                                               'Are you sure you want to delete this item?'),
//                                           actions: [
//                                             TextButton(
//                                               onPressed: () =>
//                                                   Navigator.of(context)
//                                                       .pop(false),
//                                               child: const Text('Cancel'),
//                                             ),
//                                             TextButton(
//                                               onPressed: () =>
//                                                   Navigator.of(context)
//                                                       .pop(true),
//                                               child: const Text('Delete'),
//                                             ),
//                                           ],
//                                         );
//                                       },
//                                     );
//
//                                     if (confirm == true) {
//                                       setState(() {
//                                         _rows.remove(row);
//                                       });
//                                     }
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ]);
//                       }).toList(),
//                     ),
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class AddServiceItemForm extends StatelessWidget {
//   final TextEditingController serviceIDController = TextEditingController();
//   final TextEditingController descriptionController = TextEditingController();
//   final TextEditingController descriptionArController = TextEditingController();
//
//   AddServiceItemForm({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('Add Service Item'),
//       content: _buildForm(),
//       actions: [
//         TextButton(
//           onPressed: () => Navigator.pop(context),
//           child: const Text('Cancel'),
//         ),
//         TextButton(
//           onPressed: () {
//             // Create a ServiceItemCreate instance from the form inputs.
//             final newItem = ServiceItemCreate(
//               id: 0,
//               serviceID: int.tryParse(serviceIDController.text) ?? 0,
//               description: descriptionController.text,
//               descriptionAr: descriptionArController.text,
//             );
//             Navigator.pop(context, newItem);
//           },
//           child: const Text('Save'),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildForm() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         TextField(
//           controller: serviceIDController,
//           decoration: const InputDecoration(labelText: 'Service ID'),
//           keyboardType: TextInputType.number,
//         ),
//         TextField(
//           controller: descriptionController,
//           decoration: const InputDecoration(labelText: 'Description'),
//         ),
//         TextField(
//           controller: descriptionArController,
//           decoration: const InputDecoration(labelText: 'Description (Arabic)'),
//         ),
//       ],
//     );
//   }
// }
//
// class EditServiceItemForm extends StatelessWidget {
//   final ServiceItemDetails item;
//   final TextEditingController serviceIDController;
//   final TextEditingController descriptionController;
//   final TextEditingController descriptionArController;
//
//   EditServiceItemForm({super.key, required this.item})
//       : serviceIDController =
//             TextEditingController(text: item.serviceID?.toString()),
//         descriptionController = TextEditingController(text: item.description),
//         descriptionArController =
//             TextEditingController(text: item.descriptionAr);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('Edit Service Item'),
//       content: _buildForm(),
//       actions: [
//         TextButton(
//           onPressed: () => Navigator.pop(context),
//           child: const Text('Cancel'),
//         ),
//         TextButton(
//           onPressed: () {
//             final updatedItem = ServiceItemDetails(
//               serviceID: int.tryParse(serviceIDController.text),
//               description: descriptionController.text,
//               descriptionAr: descriptionArController.text,
//             );
//             Navigator.pop(context, updatedItem);
//           },
//           child: const Text('Save'),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildForm() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         TextField(
//           controller: serviceIDController,
//           decoration: const InputDecoration(labelText: 'Service ID'),
//           keyboardType: TextInputType.number,
//         ),
//         TextField(
//           controller: descriptionController,
//           decoration: const InputDecoration(labelText: 'Description'),
//         ),
//         TextField(
//           controller: descriptionArController,
//           decoration: const InputDecoration(labelText: 'Description (Arabic)'),
//         ),
//       ],
//     );
//   }
// }
