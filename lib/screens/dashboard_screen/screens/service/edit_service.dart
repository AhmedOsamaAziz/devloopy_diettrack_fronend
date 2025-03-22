import 'package:flutter/material.dart';
import 'package:ui/model/service/service_list.dart';

class EditServiceDialog extends StatelessWidget {
  final ServiceList service;
  final Function(Map<String, String>) onSave;

  const EditServiceDialog(
      {required this.service, required this.onSave, super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: service.name);
    final nameArController = TextEditingController(text: service.nameAr);
    final priceController =
        TextEditingController(text: service.price.toString());
    final validForController = TextEditingController(text: service.validFor);
    // final discountController =
    //     TextEditingController(text: service.discount.toString());
    final descriptionController =
        TextEditingController(text: service.description);
    final descriptionArController =
        TextEditingController(text: service.descriptionAr);

    // قيمة Is Best Value من الخدمة الحالية
    String isBestValue = service.isBestValue.toString();

    return AlertDialog(
      title: const Text('Edit Service'),
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
              'isBestValue': isBestValue,
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
