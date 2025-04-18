import 'package:flutter/material.dart';
import 'package:ui/model/service_item/service_item_create.dart';

// class AddServiceItemForm extends StatefulWidget {
//   const AddServiceItemForm({super.key});
//
//   @override
//   State<AddServiceItemForm> createState() => _AddServiceItemFormState();
// }
//
// class _AddServiceItemFormState extends State<AddServiceItemForm> {
//   final _formKey = GlobalKey<FormState>();
//   final _serviceIDController = TextEditingController();
//   final _descriptionController = TextEditingController();
//   final _descriptionArController = TextEditingController();
//
//   @override
//   void dispose() {
//     _serviceIDController.dispose();
//     _descriptionController.dispose();
//     _descriptionArController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('Add Service Item'),
//       content: Form(
//         key: _formKey,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             TextFormField(
//               controller: _serviceIDController,
//               decoration: const InputDecoration(labelText: 'Service ID'),
//               keyboardType: TextInputType.number,
//               validator: _validateRequired,
//             ),
//             TextFormField(
//               controller: _descriptionController,
//               decoration: const InputDecoration(labelText: 'Description'),
//               validator: _validateRequired,
//             ),
//             TextFormField(
//               controller: _descriptionArController,
//               decoration:
//                   const InputDecoration(labelText: 'Description (Arabic)'),
//               validator: _validateRequired,
//             ),
//           ],
//         ),
//       ),
//       actions: [
//         TextButton(
//           onPressed: () => Navigator.pop(context),
//           child: const Text('Cancel'),
//         ),
//         TextButton(
//           onPressed: _submitForm,
//           child: const Text('Save'),
//         ),
//       ],
//     );
//   }
//
//   String? _validateRequired(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'This field is required';
//     }
//     return null;
//   }
//
//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       final newItem = ServiceItemCreate(
//         id: 0,
//         serviceID: int.tryParse(_serviceIDController.text) ?? 0,
//         description: _descriptionController.text,
//         descriptionAr: _descriptionArController.text,
//       );
//       Navigator.pop(context, newItem);
//     }
//   }
// }

class AddServiceItemForm extends StatelessWidget {
  final TextEditingController serviceIDController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController descriptionArController = TextEditingController();

  AddServiceItemForm({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Service Item'),
      content: _buildForm(),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Create a ServiceItemCreate instance from the form inputs.
            final newItem = ServiceItemCreate(
              id: 0, // The ID will be assigned by the API
              serviceID: int.tryParse(serviceIDController.text) ?? 0,
              description: descriptionController.text,
              descriptionAr: descriptionArController.text,
            );
            Navigator.pop(context, newItem);
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
