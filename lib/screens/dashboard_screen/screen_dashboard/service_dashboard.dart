import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/service/service_create.dart';
import 'package:ui/model/service/service_list.dart';

import '../../../services/service_plan/service_plan_implmentation.dart';

class ServiceDashBoard extends StatefulWidget {
  const ServiceDashBoard({super.key});

  @override
  _ServiceDashBoardState createState() => _ServiceDashBoardState();
}

class _ServiceDashBoardState extends State<ServiceDashBoard> {
  @override
  Widget build(BuildContext context) {
    return const DashBoardBady();
  }
}

class DashBoardBady extends StatefulWidget {
  const DashBoardBady({super.key});

  @override
  State<DashBoardBady> createState() => _DashBoardBadyState();
}

class _DashBoardBadyState extends State<DashBoardBady> {
  final List<ServiceList> _rows = [];
  ServicePlanImplmentation servicePlanItemImplmentation =
      ServicePlanImplmentation();

  @override
  void initState() {
    super.initState();
    _loadServicesFromApi();
  }

  Future<void> _loadServicesFromApi() async {
    try {
      final response = await servicePlanItemImplmentation.getBaseServiceItem();

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
    }
  }

  Future<void> _saveServicesToSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final List<Map<String, dynamic>> serviceList =
        _rows.map((service) => service.toJson()).toList();
    prefs.setString('services', jsonEncode(serviceList));
  }

  void openForm({int? index}) async {
    final nameController = TextEditingController();
    final nameArController = TextEditingController();
    final priceController = TextEditingController();
    final validForController = TextEditingController();
    final isBestValueController = TextEditingController();
    final discountController = TextEditingController();
    final descriptionController = TextEditingController();
    final descriptionArController = TextEditingController();

    if (index != null) {
      final row = _rows[index];
      nameController.text = row.name;
      nameArController.text = row.nameAr;
      priceController.text = row.price.toString();
      validForController.text = row.validFor;
      isBestValueController.text = row.isBestValue.toString();
      discountController.text = row.discount.toString();
      descriptionController.text = row.description;
      descriptionArController.text = row.descriptionAr;
    }

    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(index == null ? 'Add New Service' : 'Edit Service'),
          content: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                      controller: nameController,
                      decoration: const InputDecoration(labelText: 'Name')),
                  TextField(
                      controller: nameArController,
                      decoration: const InputDecoration(labelText: 'Name Ar')),
                  TextField(
                      controller: priceController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: 'Price')),
                  TextField(
                      controller: validForController,
                      decoration:
                          const InputDecoration(labelText: 'Valid For')),
                  TextField(
                      controller: isBestValueController,
                      decoration: const InputDecoration(
                          labelText: 'Is Best Value (true/false)')),
                  TextField(
                      controller: discountController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: 'Discount')),
                  TextField(
                      controller: descriptionController,
                      decoration:
                          const InputDecoration(labelText: 'Description')),
                  TextField(
                      controller: descriptionArController,
                      decoration:
                          const InputDecoration(labelText: 'Description Ar')),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(null),
                child: const Text('Cancel')),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop({
                  'name': nameController.text,
                  'nameAr': nameArController.text,
                  'price': priceController.text,
                  'validFor': validForController.text,
                  'isBestValue': isBestValueController.text,
                  'discount': discountController.text,
                  'description': descriptionController.text,
                  'descriptionAr': descriptionArController.text,
                });
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );

    if (result != null) {
      setState(() {
        try {
          if (index == null) {
            // Create a new ServiceCreate object
            ServiceCreate newService = ServiceCreate(
              name: result['name']!,
              nameAr: result['nameAr']!,
              price: double.tryParse(result['price']!) ?? 0.0,
              validFor: result['validFor']!,
              description: result['description']!,
              descriptionAr: result['descriptionAr']!,
              isBestValue: result['isBestValue']!.toLowerCase() == 'true',
              items: [], // Add items if needed
            );

            // Call the createServiceItem method
            servicePlanItemImplmentation
                .createServiceItem(newService)
                .then((response) {
              if (response.status == ResponseStatus.success) {
                // Add the new service to the list
                _rows.add(ServiceList(
                  name: newService.name,
                  nameAr: newService.nameAr,
                  price: newService.price,
                  validFor: newService.validFor,
                  isBestValue: newService.isBestValue,
                  discount: int.tryParse(result['discount']!) ?? 0,
                  description: newService.description,
                  descriptionAr: newService.descriptionAr,
                ));
                _saveServicesToSharedPref(); // Save to shared preferences
              } else {
                log("Failed to create service: ${response.message}");
              }
            });
          } else {
            // Editing existing service
            _rows[index]
              ..name = result['name']!
              ..nameAr = result['nameAr']!
              ..price = double.tryParse(result['price']!) ?? 0.0
              ..validFor = result['validFor']!
              ..isBestValue = result['isBestValue']!.toLowerCase() == 'true'
              ..discount = int.tryParse(result['discount']!) ?? 0
              ..description = result['description']!
              ..descriptionAr = result['descriptionAr']!;
            _saveServicesToSharedPref(); // Save to shared preferences
          }
        } catch (e) {
          // Handle any parsing errors
          log("Error: $e");
        }
      });
    }
  }

  void _deleteRow(int index) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Deletion'),
          content: const Text('Are you sure you want to delete this service?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(true), // Confirm
              child: const Text('Delete'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(false), // Cancel
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );

    if (confirm == true) {
      setState(() {
        _rows.removeAt(index);
        _saveServicesToSharedPref(); // Update shared preferences
      });
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
            onPressed: () => openForm(),
            text: 'Add Service',
            colortxt: ColorsApp.MainColorbackgraund
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Add horizontal scrolling
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  headingTextStyle: const TextStyle(color: Colors.white),
                  headingRowColor: WidgetStateProperty.all(ColorsApp.TextColor),
                  columns: const [
                    DataColumn(label: Text("Name")),
                    DataColumn(label: Text("Name Ar")),
                    DataColumn(label: Text("Price")),
                    DataColumn(label: Text("Valid For")),
                    DataColumn(label: Text("Is Best Value")),
                    DataColumn(label: Text("Description")),
                    DataColumn(label: Text("Description Ar")),
                    DataColumn(label: Text("Actions")),
                  ],
                  rows: _rows.asMap().entries.map((entry) {
                    final index = entry.key;
                    final row = entry.value;

                    return DataRow(cells: [
                      DataCell(SizedBox(width: 70, child: Text(row.name))),
                      DataCell(SizedBox(width: 70, child: Text(row.nameAr))),
                      DataCell(SizedBox(
                          width: 30, child: Text(row.price.toString()))),
                      DataCell(SizedBox(width: 70, child: Text(row.validFor))),
                      DataCell(SizedBox(
                          width: 30, child: Text(row.isBestValue.toString()))),
                      DataCell(SizedBox(
                        width: 100,
                        child: Text(
                          row.description.toString(),
                          style: TextStyle(
                              fontSize:
                                  getResponsiveFontSize(context, fontSize: 9)),
                        ),
                      )),
                      DataCell(SizedBox(
                        width: 100,
                        child: Text(
                          row.descriptionAr.toString(),
                          style: TextStyle(
                              fontSize:
                                  getResponsiveFontSize(context, fontSize: 9)),
                        ),
                      )),
                      DataCell(
                        SizedBox(
                          width: 200,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomButton(
                                onPressed: () => openForm(index: index),
                                text: 'Edit',
                                colortxt: ColorsApp.MainColorbackgraund,
                              ),
                              const SizedBox(width: 8),
                              CustomButton(
                                onPressed: () => _deleteRow(index),
                                text: 'Delete',
                                colortxt: ColorsApp.MainColorbackgraund,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]);
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
