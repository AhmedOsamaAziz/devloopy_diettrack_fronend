// service_form_dialog.dart
import 'package:flutter/material.dart';
import 'package:ui/model/service/service_list.dart';

class ServiceFormDialog extends StatelessWidget {
  final ServiceList? service;

  const ServiceFormDialog({super.key, this.service});

  @override
  Widget build(BuildContext context) {
    final controllers = _initializeControllers();

    return AlertDialog(
      title: Text(service == null ? 'Add New Service' : 'Edit Service'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTextField(controllers['name']!, 'Name'),
            _buildTextField(controllers['nameAr']!, 'Name Ar'),
            _buildNumberField(controllers['price']!, 'Price'),
            _buildTextField(controllers['validFor']!, 'Valid For'),
            _buildTextField(
                controllers['isBestValue']!, 'Is Best Value (true/false)'),
            _buildNumberField(controllers['discount']!, 'Discount'),
            _buildTextField(controllers['description']!, 'Description'),
            _buildTextField(controllers['descriptionAr']!, 'Description Ar'),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, null),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => _submitForm(controllers, context),
          child: const Text('Save'),
        ),
      ],
    );
  }

  Map<String, TextEditingController> _initializeControllers() {
    return {
      'name': TextEditingController(text: service?.name ?? ''),
      'nameAr': TextEditingController(text: service?.nameAr ?? ''),
      'price': TextEditingController(text: service?.price.toString() ?? ''),
      'validFor': TextEditingController(text: service?.validFor ?? ''),
      'isBestValue':
          TextEditingController(text: service?.isBestValue.toString() ?? ''),
      'discount':
          TextEditingController(text: service?.discount.toString() ?? ''),
      'description': TextEditingController(text: service?.description ?? ''),
      'descriptionAr':
          TextEditingController(text: service?.descriptionAr ?? ''),
    };
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
    );
  }

  Widget _buildNumberField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: label),
    );
  }

  void _submitForm(
      Map<String, TextEditingController> controllers, BuildContext context) {
    final result = {
      for (var entry in controllers.entries) entry.key: entry.value.text
    };
    Navigator.pop(context, result);
  }
}
