// add_service.dart
import 'package:flutter/material.dart';

class AddService extends StatefulWidget {
  final Function(Map<String, dynamic>) onSave;

  const AddService({required this.onSave, super.key});

  @override
  _AddServiceState createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  final _formKey = GlobalKey<FormState>();
  final List<Map<String, TextEditingController>> _items = [];
  final nameController = TextEditingController();
  final nameArController = TextEditingController();
  final priceController = TextEditingController();
  final validForController = TextEditingController();
  final descriptionController = TextEditingController();
  final descriptionArController = TextEditingController();
  String isBestValue = 'false';

  @override
  void initState() {
    super.initState();
    _addItem();
  }

  void _addItem() {
    setState(() {
      _items.add({
        'description': TextEditingController(),
        'descriptionAr': TextEditingController(),
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add New Service'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                    setState(() {
                      isBestValue = newValue!;
                    });
                  },
                ),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(labelText: 'Description'),
                ),
                TextField(
                  controller: descriptionArController,
                  decoration:
                      const InputDecoration(labelText: 'Description Ar'),
                ),
                ..._items.asMap().entries.map((entry) {
                  final controllers = entry.value;
                  return Column(
                    children: [
                      TextField(
                        controller: controllers['description'],
                        decoration: const InputDecoration(
                            labelText: 'Item Description'),
                      ),
                      TextField(
                        controller: controllers['descriptionAr'],
                        decoration: const InputDecoration(
                            labelText: 'Item Description Ar'),
                      ),
                    ],
                  );
                }),
              ],
            ),
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
            final itemsData = _items
                .map((item) => {
                      'description': item['description']!.text,
                      'descriptionAr': item['descriptionAr']!.text,
                    })
                .toList();

            Navigator.of(context).pop({
              'name': nameController.text,
              'nameAr': nameArController.text,
              'price': priceController.text,
              'validFor': validForController.text,
              'isBestValue': isBestValue,
              'description': descriptionController.text,
              'descriptionAr': descriptionArController.text,
              'items': itemsData,
            });
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
