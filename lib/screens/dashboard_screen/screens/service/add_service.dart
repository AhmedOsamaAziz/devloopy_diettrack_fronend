import 'package:flutter/material.dart';

class AddServiceDialog extends StatelessWidget {
  final Function(Map<String, String>) onSave;

  const AddServiceDialog({required this.onSave, super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final nameArController = TextEditingController();
    final priceController = TextEditingController();
    final validForController = TextEditingController();
    final isBestValueController = TextEditingController();
    final discountController = TextEditingController();
    final descriptionController = TextEditingController();
    final descriptionArController = TextEditingController();
    String isBestValue = 'false';
    return AlertDialog(
      title: const Text('Add New Service'),
      content: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: nameArController,
                decoration: const InputDecoration(labelText: 'Name Ar'),
              ),
              TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Price'),
              ),
              TextField(
                controller: validForController,
                decoration: const InputDecoration(labelText: 'Valid For'),
              ),

              DropdownButtonFormField<String>(
                value: isBestValue,
                decoration: const InputDecoration(labelText: 'Is Best Value'),
                items: ['true', 'false'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  isBestValue = newValue!;
                },
              ),
              // TextField(
              //   controller: discountController,
              //   keyboardType: TextInputType.number,
              //   decoration: const InputDecoration(labelText: 'Discount'),
              // ),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
              ),
              TextField(
                controller: descriptionArController,
                decoration: const InputDecoration(labelText: 'Description Ar'),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(null),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop({
              'name': nameController.text,
              'nameAr': nameArController.text,
              'price': priceController.text,
              'validFor': validForController.text,
              'isBestValue': isBestValueController.text,
              // 'discount': discountController.text,
              'description': descriptionController.text,
              'descriptionAr': descriptionArController.text,
            });
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
