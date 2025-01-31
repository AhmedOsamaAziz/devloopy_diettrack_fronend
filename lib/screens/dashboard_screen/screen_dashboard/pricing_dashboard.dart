import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service_item/service_item_details.dart';
import 'package:ui/services/service_plan_item/service_plan_item_implmentation.dart';

class PricingDashboard extends StatefulWidget {
  const PricingDashboard({super.key});

  @override
  _PricingDashboardState createState() => _PricingDashboardState();
}

class _PricingDashboardState extends State<PricingDashboard> {
  final List<ServiceItemDetails> _rows = [];
  ServicePlanImplementation servicePlanItemImplmentation =
      ServicePlanImplementation();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadServicesItem();
  }

  Future<void> _loadServicesItem() async {
    try {
      final response = await servicePlanItemImplmentation.getListService();
      if (response.status == ResponseStatus.success) {
        // log("Fetched services===============: ${response.obj.map((service) => service.toJson()).toList()}");
        setState(() {
          _rows.clear();
          _rows.addAll(response.obj);
        });
      } else {
        log("Failed to fetch services: ${response.message}");
      }
    } catch (e) {
      log("Error fetching services: $e");
    }
  }

  _loadTestimonials() async {
    setState(() {
      _isLoading = true;
    });
  }

  Future<void> _openForm({ServiceItemDetails? item}) async {
    TextEditingController IDController =
        TextEditingController(text: item?.id.toString());

    TextEditingController serviceIDController =
        TextEditingController(text: item?.serviceID as String?);
    TextEditingController descriptionController =
        TextEditingController(text: item?.description);
    TextEditingController descriptionArController =
        TextEditingController(text: item?.descriptionAr);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(item == null ? 'Add Service Item' : 'Edit Service Item'),
          content: SizedBox(
            width: 400,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: [
                TextField(
                  controller: IDController,
                  decoration: const InputDecoration(labelText: ' ID'),
                ),
                TextField(
                  controller: serviceIDController,
                  decoration: const InputDecoration(labelText: 'Service ID'),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(labelText: 'Description'),
                ),
                TextField(
                  controller: descriptionArController,
                  decoration:
                      const InputDecoration(labelText: 'Description (Arabic)'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (item == null) {
                  setState(() {
                    _rows.add(ServiceItemDetails(
                        id: _rows.length + 1,
                        serviceID: int.tryParse(serviceIDController.text),
                        description: descriptionController.text,
                        descriptionAr: descriptionArController.text));
                  });
                } else {
                  setState(() {
                    item.id = item.id;
                    item.serviceID = int.tryParse(serviceIDController.text);
                    item.description = descriptionController.text;
                    item.descriptionAr = descriptionArController.text;
                  });
                }
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: ColorsApp.OUTLINECOLOR,
      child: Column(
        children: [
          CustomButton(
            onPressed: _openForm,
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
                        DataColumn(label: Text('ID')),
                        DataColumn(label: Text('serviceID')),
                        DataColumn(label: Text('description')),
                        DataColumn(label: Text('descriptionAr')),
                        DataColumn(
                            label: Text('Actions')), // Add Actions column
                      ],
                      rows: _rows.asMap().entries.map((entry) {
                        final row = entry.value;
                        return DataRow(cells: [
                          DataCell(Text(row.id.toString())),
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
                                    onPressed: () => _openForm(item: row),
                                    text: 'Edit',
                                    colortxt: ColorsApp.MainColorbackgraund),
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
                    )),
          ),
        ],
      ),
    );
  }
}
