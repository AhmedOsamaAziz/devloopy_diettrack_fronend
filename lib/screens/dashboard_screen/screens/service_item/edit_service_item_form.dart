import 'package:flutter/material.dart';

import '../../../../model/service_item/service_item_details.dart';
//
// class EditServiceItemForm extends StatelessWidget {
//   final ServiceItemDetails item;
//   final TextEditingController serviceIDController;
//   final TextEditingController descriptionController;
//   final TextEditingController descriptionArController;
//
//   EditServiceItemForm({super.key, required this.item})
//       : serviceIDController =
//             TextEditingController(text: item.serviceID?.toString()),
//         descriptionController = TextEditingController(text: item.description),
//         descriptionArController =
//             TextEditingController(text: item.descriptionAr);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('Edit Service Item'),
//       content: _buildForm(),
//       actions: [
//         TextButton(
//           onPressed: () => Navigator.pop(context),
//           child: const Text('Cancel'),
//         ),
//         TextButton(
//           onPressed: () {
//             final updatedItem = ServiceItemDetails(
//               id: item.id,
//               serviceID: int.tryParse(serviceIDController.text),
//               description: descriptionController.text,
//               descriptionAr: descriptionArController.text,
//             );
//             Navigator.pop(context, updatedItem);
//           },
//           child: const Text('Save'),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildForm() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         TextField(
//           controller: serviceIDController,
//           decoration: const InputDecoration(labelText: 'Service ID'),
//           keyboardType: TextInputType.number,
//         ),
//         TextField(
//           controller: descriptionController,
//           decoration: const InputDecoration(labelText: 'Description'),
//         ),
//         TextField(
//           controller: descriptionArController,
//           decoration: const InputDecoration(labelText: 'Description (Arabic)'),
//         ),
//       ],
//     );
//   }
// }

class EditServiceItemForm extends StatelessWidget {
  final ServiceItemDetails item;
  final TextEditingController serviceIDController;
  final TextEditingController descriptionController;
  final TextEditingController descriptionArController;

  EditServiceItemForm({super.key, required this.item})
      : serviceIDController =
            TextEditingController(text: item.serviceID?.toString()),
        descriptionController = TextEditingController(text: item.description),
        descriptionArController =
            TextEditingController(text: item.descriptionAr);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Service Item'),
      content: _buildForm(),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            final updatedItem = ServiceItemDetails(
              id: item.id,
              serviceID:
                  int.tryParse(serviceIDController.text) ?? item.serviceID,
              description: descriptionController.text,
              descriptionAr: descriptionArController.text,
            );
            Navigator.pop(context, updatedItem);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }

  Widget _buildForm() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: serviceIDController,
          decoration: const InputDecoration(labelText: 'Service ID'),
          keyboardType: TextInputType.number,
        ),
        TextField(
          controller: descriptionController,
          decoration: const InputDecoration(labelText: 'Description'),
        ),
        TextField(
          controller: descriptionArController,
          decoration: const InputDecoration(labelText: 'Description (Arabic)'),
        ),
      ],
    );
  }
}
