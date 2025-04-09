// edit_service.dart
import 'package:flutter/material.dart';
import 'package:ui/model/service/service_list.dart';

class EditService extends StatefulWidget {
  final ServiceList service;
  final Function(Map<String, dynamic>) onSave;

  const EditService({required this.service, required this.onSave, super.key});

  @override
  _EditServiceState createState() => _EditServiceState();
}

class _EditServiceState extends State<EditService> {
  late List<Map<String, TextEditingController>> _items;
  late String isBestValue;
  final _formKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController nameArController;
  late TextEditingController priceController;
  late TextEditingController validForController;
  late TextEditingController descriptionController;
  late TextEditingController descriptionArController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.service.name);
    nameArController = TextEditingController(text: widget.service.nameAr);
    priceController =
        TextEditingController(text: widget.service.price.toString());
    validForController = TextEditingController(text: widget.service.validFor);
    descriptionController =
        TextEditingController(text: widget.service.description);
    descriptionArController =
        TextEditingController(text: widget.service.descriptionAr);
    isBestValue = widget.service.isBestValue.toString();

    _items = widget.service.items?.map((item) {
          return {
            'description': TextEditingController(text: item.description),
            'descriptionAr': TextEditingController(text: item.descriptionAr),
          };
        }).toList() ??
        [];

    if (_items.isEmpty) _addItem();
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
      title: const Text('Edit Service'),
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
                  items: ['true', 'false'].map((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) => setState(() => isBestValue = value!),
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
                const SizedBox(height: 20),
                const Text('Service Items:'),
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
