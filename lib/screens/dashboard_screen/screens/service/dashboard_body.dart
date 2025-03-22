import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service/service_create.dart';
import 'package:ui/model/service/service_list.dart';
import 'package:ui/services/service_plan/service_plan_implmentation.dart';

import 'add_service.dart';
import 'edit_service.dart';
import 'service_table.dart';

class DashBoardBady extends StatefulWidget {
  const DashBoardBady({super.key});

  @override
  State<DashBoardBady> createState() => _DashBoardBadyState();
}

class _DashBoardBadyState extends State<DashBoardBady> {
  final List<ServiceList> _rows = [];
  final ServicePlanImplmentation servicePlanItemImplmentation =
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
    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (BuildContext context) {
        if (index == null) {
          return AddServiceDialog(
            onSave: (result) {
              Navigator.of(context).pop(result);
            },
          );
        } else {
          return EditServiceDialog(
            service: _rows[index],
            onSave: (result) {
              Navigator.of(context).pop(result);
            },
          );
        }
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
              colortxt: ColorsApp.MainColorbackgraund),
          const SizedBox(height: 20),
          ServiceTable(rows: _rows, openForm: openForm, deleteRow: _deleteRow),
        ],
      ),
    );
  }
}
