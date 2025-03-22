import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../Constants/constants.dart';
import '../../../../constants/custom_button.dart';
import '../../../../core/api/generic_response.dart';
import '../../../../model/service_item/service_item_create.dart';
import '../../../../model/service_item/service_item_details.dart';
import '../../../../services/service_plan_item/service_plan_item_implmentation.dart';
import 'add_service_item_form.dart';
import 'edit_service_item_form.dart';

class ServiceItemDashboard extends StatefulWidget {
  const ServiceItemDashboard({super.key});

  @override
  _ServiceItemDashboardState createState() => _ServiceItemDashboardState();
}

class _ServiceItemDashboardState extends State<ServiceItemDashboard> {
  final List<ServiceItemDetails> _rows = [];
  final ServicePlanImplementation servicePlanItemImplmentation =
      ServicePlanImplementation();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchServiceItems();
  }

  Future<void> _fetchServiceItems() async {
    setState(() => _isLoading = true);
    try {
      final response = await servicePlanItemImplmentation.getListService();
      if (response.status == ResponseStatus.success) {
        setState(() {
          _rows.clear();
          _rows.addAll(response.obj);
        });
      } else {
        log("Failed to fetch services: ${response.message}");
      }
    } catch (e) {
      log("Error fetching services: $e");
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _openAddForm() async {
    // Show the add form and wait for the new service item details.
    final newItem = await showDialog<ServiceItemCreate>(
      context: context,
      builder: (context) => AddServiceItemForm(),
    );

    if (newItem != null) {
      print("New item to be added: ${newItem.toJson()}"); // Debugging
      setState(() => _isLoading = true);

      try {
        // Call the API to create the new service item.
        final response = await servicePlanItemImplmentation.createService(
            newItem, newItem.serviceID);

        print("API Response: ${response.obj}"); // Debugging

        if (response.status == ResponseStatus.success && response.obj != null) {
          print("Service item added successfully!"); // Debugging

          // Add the new service item to the list.
          setState(() {
            _rows.add(response.obj); // تحديث القائمة في الوقت الفعلي
          });

          // Show a success message.
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: Colors.green[700],
                content: const Text('Service item added successfully!')),
          );

          // Refresh the list of service items.
          await _fetchServiceItems();
        } else {
          print("Failed to add service item: ${response.message}"); // Debugging
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: Colors.red[700],
                content:
                    Text('Failed to add service item: ${response.message}')),
          );
        }
      } catch (e) {
        print("Error adding service item: $e"); // Debugging
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.red[700],
              content: Text('Error adding service item: ${e.toString()}')),
        );
      } finally {
        setState(() => _isLoading = false);
      }
    } else {
      print("No item was added."); // Debugging
    }
  }

  Future<void> _openEditForm(ServiceItemDetails item) async {
    // Show the edit form and wait for the updated service item details.
    final updatedItem = await showDialog<ServiceItemDetails>(
      context: context,
      builder: (context) => EditServiceItemForm(item: item),
    );

    if (updatedItem != null) {
      setState(() => _isLoading = true); // إظهار مؤشر التحميل

      try {
        // Call the API to update the service item.
        final response = await servicePlanItemImplmentation.updateService(
            updatedItem, updatedItem.serviceID!);

        if (response.status == ResponseStatus.success && response.obj != null) {
          // تحديث القائمة في الوقت الفعلي
          setState(() {
            final index = _rows.indexWhere(
                (element) => element.serviceID == updatedItem.serviceID);
            if (index != -1) {
              _rows[index] = updatedItem;
            }
          });

          // إظهار رسالة نجاح
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: Colors.green[700],
                content: const Text('Service item updated successfully!')),
          );
        } else {
          print("Failed to update service item: ${response.message}");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: Colors.red[700],
                content:
                    Text('Failed to update service item: ${response.message}')),
          );
        }
      } catch (e) {
        print("Error updating service item: $e");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.red[700],
              content: Text('Error updating service item: ${e.toString()}')),
        );
      } finally {
        setState(() => _isLoading = false); // إخفاء مؤشر التحميل
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: ColorsApp.OUTLINECOLOR,
      child: Column(
        children: [
          CustomButton(
            onPressed: _openAddForm,
            text: 'Add Service Item',
            colortxt: ColorsApp.MainColorbackgraund,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                      headingTextStyle: const TextStyle(color: Colors.white),
                      headingRowColor:
                          WidgetStateProperty.all(ColorsApp.TextColor),
                      columns: const [
                        DataColumn(label: Text('Service ID')),
                        DataColumn(label: Text('Description')),
                        DataColumn(label: Text('Description (Arabic)')),
                        DataColumn(label: Text('Actions')),
                      ],
                      rows: _rows.map((row) {
                        return DataRow(cells: [
                          DataCell(Text(row.serviceID.toString())),
                          DataCell(SizedBox(
                              width: 150,
                              child: Text(row.description.toString()))),
                          DataCell(SizedBox(
                              width: 150,
                              child: Text(row.descriptionAr.toString()))),
                          DataCell(
                            Row(
                              children: [
                                CustomButton(
                                  onPressed: () => _openEditForm(row),
                                  text: 'Edit',
                                  colortxt: ColorsApp.MainColorbackgraund,
                                ),
                                const SizedBox(width: 8),
                                CustomButton(
                                  text: 'Delete',
                                  colortxt: ColorsApp.MainColorbackgraund,
                                  onPressed: () async {
                                    final confirm = await showDialog<bool>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Confirm Deletion'),
                                          content: const Text(
                                              'Are you sure you want to delete this item?'),
                                          actions: [
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.of(context)
                                                      .pop(false),
                                              child: const Text('Cancel'),
                                            ),
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.of(context)
                                                      .pop(true),
                                              child: const Text('Delete'),
                                            ),
                                          ],
                                        );
                                      },
                                    );

                                    if (confirm == true) {
                                      setState(() {
                                        _rows.remove(row);
                                      });
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ]);
                      }).toList(),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
