// // import 'dart:developer';
// //
// // import 'package:flutter/material.dart';
// // import 'package:ui/constants/constants.dart';
// // import 'package:ui/constants/custom_button.dart';
// // import 'package:ui/core/api/generic_response.dart';
// // import 'package:ui/model/service_item/service_item_create.dart';
// // import 'package:ui/model/service_item/service_item_details.dart';
// // import 'package:ui/screens/dashboard_screen/screen_dashboard/service_item/add_service_item_form.dart';
// // import 'package:ui/screens/dashboard_screen/screen_dashboard/service_item/edit_service_item_form.dart';
// // import 'package:ui/screens/dashboard_screen/screen_dashboard/service_item/service_item_list.dart';
// // import 'package:ui/services/service_plan_item/service_plan_item_implmentation.dart';
// //
// // class ServiceItemDashboard extends StatefulWidget {
// //   const ServiceItemDashboard({super.key});
// //
// //   @override
// //   State<ServiceItemDashboard> createState() => _ServiceItemDashboardState();
// // }
// //
// // class _ServiceItemDashboardState extends State<ServiceItemDashboard> {
// //   final List<ServiceItemDetails> _rows = [];
// //   final ServicePlanImplementation _servicePlanItemImplmentation =
// //       ServicePlanImplementation();
// //   bool _isLoading = false;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _fetchServiceItems();
// //   }
// //
// //   Future<void> _fetchServiceItems() async {
// //     setState(() => _isLoading = true);
// //     try {
// //       final response = await _servicePlanItemImplmentation.getListService();
// //       if (response.status == ResponseStatus.success) {
// //         setState(() {
// //           _rows.clear();
// //           _rows.addAll(response.obj);
// //         });
// //       } else {
// //         log("Failed to fetch services: ${response.message}");
// //       }
// //     } catch (e) {
// //       log("Error fetching services: $e");
// //     } finally {
// //       setState(() => _isLoading = false);
// //     }
// //   }
// //
// //   Future<void> addItem(ServiceItemCreate? newItem) async {
// //     if (newItem == null) return;
// //
// //     setState(() => _isLoading = true);
// //     try {
// //       final response =
// //           await _servicePlanItemImplmentation.createService(newItem, 1);
// //
// //       if (response.status == ResponseStatus.success && response.obj != null) {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(
// //             backgroundColor: Colors.green[700],
// //             content: const Text('Service item added successfully!'),
// //           ),
// //         );
// //         await _fetchServiceItems();
// //       }
// //     } catch (e) {
// //       log("Error adding service item: $e");
// //     } finally {
// //       setState(() => _isLoading = false);
// //     }
// //   }
// //
// //   Future<void> deleteItem(ServiceItemDetails item) async {
// //     final confirm = await showDialog<bool>(
// //       context: context,
// //       builder: (BuildContext context) => AlertDialog(
// //         title: const Text('Confirm Deletion'),
// //         content: const Text('Are you sure you want to delete this item?'),
// //         actions: [
// //           TextButton(
// //             onPressed: () => Navigator.of(context).pop(false),
// //             child: const Text('Cancel'),
// //           ),
// //           TextButton(
// //             onPressed: () => Navigator.of(context).pop(true),
// //             child: const Text('Delete'),
// //           ),
// //         ],
// //       ),
// //     );
// //
// //     if (confirm == true && mounted) {
// //       setState(() => _rows.remove(item));
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       padding: const EdgeInsets.all(25),
// //       color: ColorsApp.OUTLINECOLOR,
// //       child: Column(
// //         children: [
// //           CustomButton(
// //             onPressed: () => _showAddForm(context),
// //             text: 'Add Service Item',
// //             colortxt: ColorsApp.MainColorbackgraund,
// //           ),
// //           const SizedBox(height: 20),
// //           Expanded(
// //             child: _isLoading
// //                 ? const Center(child: CircularProgressIndicator())
// //                 : ServiceItemList(
// //                     items: _rows,
// //                     onEdit: (item) => _showEditForm(context, item),
// //                     onDelete: deleteItem,
// //                   ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Future<void> _showAddForm(BuildContext context) async {
// //     final newItem = await showDialog<ServiceItemCreate>(
// //       context: context,
// //       builder: (context) => const AddServiceItemForm(),
// //     );
// //     addItem(newItem);
// //   }
// //
// //   Future<void> _showEditForm(
// //       BuildContext context, ServiceItemDetails item) async {
// //     final updatedItem = await showDialog<ServiceItemDetails>(
// //       context: context,
// //       builder: (context) => EditServiceItemForm(item: item),
// //     );
// //
// //     if (updatedItem != null && mounted) {
// //       setState(() {
// //         final index = _rows.indexWhere(
// //           (element) => element.serviceID == updatedItem.serviceID,
// //         );
// //         if (index != -1) _rows[index] = updatedItem;
// //       });
// //     }
// //   }
// // }
//
// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:ui/constants/constants.dart';
// import 'package:ui/constants/custom_button.dart';
// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/model/service_item/service_item_create.dart';
// import 'package:ui/model/service_item/service_item_details.dart';
// import 'package:ui/screens/dashboard_screen/screen_dashboard/service_item/add_service_item_form.dart';
// import 'package:ui/screens/dashboard_screen/screen_dashboard/service_item/edit_service_item_form.dart';
// import 'package:ui/screens/dashboard_screen/screen_dashboard/service_item/service_item_list.dart';
// import 'package:ui/services/service_plan_item/service_plan_item_implmentation.dart';
//
// class ServiceItemDashboard extends StatefulWidget {
//   const ServiceItemDashboard({super.key});
//
//   @override
//   State<ServiceItemDashboard> createState() => _ServiceItemDashboardState();
// }
//
// class _ServiceItemDashboardState extends State<ServiceItemDashboard> {
//   final List<ServiceItemDetails> _rows = [];
//   final ServicePlanImplementation _servicePlanItemImplmentation =
//       ServicePlanImplementation();
//   bool _isLoading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchServiceItems(); // Initially load items from API.
//   }
//
//   // Fetch the list from the API and update the _rows list.
//   Future<void> _fetchServiceItems() async {
//     setState(() => _isLoading = true);
//     try {
//       final response = await _servicePlanItemImplmentation.getListService();
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
//   // When a new item is added, call the API to create it, then refresh the list.
//   Future<void> addItem(ServiceItemCreate? newItem) async {
//     if (newItem == null) return;
//
//     setState(() => _isLoading = true);
//     try {
//       final response =
//           await _servicePlanItemImplmentation.createService(newItem, 1);
//
//       if (response.status == ResponseStatus.success && response.obj != null) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             backgroundColor: Colors.green[700],
//             content: const Text('Service item added successfully!'),
//           ),
//         );
//         // Refresh the list by fetching the latest data from the API.
//         await _fetchServiceItems();
//       } else {
//         log("Failed to add service item: ${response.message}");
//       }
//     } catch (e) {
//       log("Error adding service item: $e");
//     } finally {
//       setState(() => _isLoading = false);
//     }
//   }
//
//   // Delete an item and update the list (you could also call an API here).
//   Future<void> deleteItem(ServiceItemDetails item) async {
//     final confirm = await showDialog<bool>(
//       context: context,
//       builder: (BuildContext context) => AlertDialog(
//         title: const Text('Confirm Deletion'),
//         content: const Text('Are you sure you want to delete this item?'),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(false),
//             child: const Text('Cancel'),
//           ),
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(true),
//             child: const Text('Delete'),
//           ),
//         ],
//       ),
//     );
//
//     if (confirm == true && mounted) {
//       setState(() => _rows.remove(item));
//       // Optionally, if deletion is done through an API, call it and then refresh the list.
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
//             onPressed: () => _showAddForm(context),
//             text: 'Add Service Item',
//             colortxt: ColorsApp.MainColorbackgraund,
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: _isLoading
//                 ? const Center(child: CircularProgressIndicator())
//                 : ServiceItemList(
//                     items: _rows,
//                     onEdit: (item) => _showEditForm(context, item),
//                     onDelete: deleteItem,
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Show form to add a new service item.
//   Future<void> _showAddForm(BuildContext context) async {
//     final newItem = await showDialog<ServiceItemCreate>(
//       context: context,
//       builder: (context) => const AddServiceItemForm(),
//     );
//     await addItem(newItem);
//   }
//
//   // Show form to edit an existing service item.
//   Future<void> _showEditForm(
//       BuildContext context, ServiceItemDetails item) async {
//     final updatedItem = await showDialog<ServiceItemDetails>(
//       context: context,
//       builder: (context) => EditServiceItemForm(item: item),
//     );
//
//     if (updatedItem != null && mounted) {
//       setState(() {
//         final index = _rows.indexWhere(
//           (element) => element.serviceID == updatedItem.serviceID,
//         );
//         if (index != -1) _rows[index] = updatedItem;
//       });
//     }
//   }
// }
