// dashboard_body.dart
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/service/service_list.dart';

import 'service_controller.dart';
import 'service_form_dialog.dart';

class DashBoardBody extends StatefulWidget {
  const DashBoardBody({super.key});

  @override
  State<DashBoardBody> createState() => _DashBoardBodyState();
}

class _DashBoardBodyState extends State<DashBoardBody> {
  final List<ServiceList> _rows = [];
  final ServiceController _serviceController = ServiceController();

  @override
  void initState() {
    super.initState();
    _loadServices();
  }

  Future<void> _loadServices() async {
    try {
      final response = await _serviceController.getServices();
      if (response.status == ResponseStatus.success) {
        setState(() {
          _rows.clear();
          _rows.addAll(response.obj ?? []);
        });
      }
    } catch (e) {
      log("Error loading services: $e");
    }
  }

  Future<void> _handleServiceAction(
      Map<String, String>? result, int? index) async {
    if (result == null) return;

    try {
      if (index == null) {
        final response = await _serviceController.createService(result);
        if (response.status == ResponseStatus.success) {
          setState(() => _rows.add(response.obj!));
        }
      } else {
        final response =
            await _serviceController.updateService(result, _rows[index]);
        if (response.status == ResponseStatus.success) {
          setState(() => _rows[index] = response.obj!);
        }
      }
    } catch (e) {
      log("Error handling service action: $e");
    }
  }

  Future<void> _deleteService(int index) async {
    final confirm = await showDeleteConfirmation(context);
    if (confirm == true) {
      final response = await _serviceController.deleteService(_rows[index]);
      if (response.status == ResponseStatus.success) {
        setState(() => _rows.removeAt(index));
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
            onPressed: () => _showServiceForm(),
            text: 'Add Service',
            colortxt: ColorsApp.MainColorbackgraund,
          ),
          const SizedBox(height: 20),
          Expanded(child: _buildServiceTable()),
        ],
      ),
    );
  }

  Widget _buildServiceTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
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
            DataColumn(label: Text("Discount")),
            DataColumn(label: Text("Description")),
            DataColumn(label: Text("Description Ar")),
            DataColumn(label: Text("Actions")),
          ],
          rows: _rows.asMap().entries.map(_buildTableRow).toList(),
        ),
      ),
    );
  }

  DataRow _buildTableRow(MapEntry<int, ServiceList> entry) {
    final index = entry.key;
    final row = entry.value;

    return DataRow(cells: [
      _buildTableCell(row.name),
      _buildTableCell(row.nameAr),
      _buildTableCell(row.price.toString()),
      _buildTableCell(row.validFor),
      _buildTableCell(row.isBestValue.toString()),
      _buildTableCell(row.discount.toString()),
      _buildDescriptionCell(row.description),
      _buildDescriptionCell(row.descriptionAr),
      _buildActionCell(index),
    ]);
  }

  DataCell _buildTableCell(String text) {
    return DataCell(Text(text));
  }

  DataCell _buildDescriptionCell(String text) {
    return DataCell(
      Text(
        text,
        style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 9),
        ),
      ),
    );
  }

  DataCell _buildActionCell(int index) {
    return DataCell(
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomButton(
            onPressed: () => _showServiceForm(index: index),
            text: 'Edit',
            colortxt: ColorsApp.MainColorbackgraund,
          ),
          const SizedBox(width: 8),
          CustomButton(
            onPressed: () => _deleteService(index),
            text: 'Delete',
            colortxt: ColorsApp.MainColorbackgraund,
          ),
        ],
      ),
    );
  }

  Future<void> _showServiceForm({int? index}) async {
    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (_) => ServiceFormDialog(
        service: index != null ? _rows[index] : null,
      ),
    );

    if (result != null) {
      await _handleServiceAction(result, index);
    }
  }

  Future<bool?> showDeleteConfirmation(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Deletion'),
        content: const Text('Are you sure you want to delete this service?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }
}
