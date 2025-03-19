// import 'package:flutter/material.dart';
// import 'package:ui/model/service_item/service_item_details.dart';
//
// class EditServiceItemForm extends StatefulWidget {
//   final ServiceItemDetails item;
//
//   const EditServiceItemForm({super.key, required this.item});
//
//   @override
//   State<EditServiceItemForm> createState() => _EditServiceItemFormState();
// }
//
// class _EditServiceItemFormState extends State<EditServiceItemForm> {
//   final _formKey = GlobalKey<FormState>();
//   late final TextEditingController _serviceIDController;
//   late final TextEditingController _descriptionController;
//   late final TextEditingController _descriptionArController;
//
//   @override
//   void initState() {
//     super.initState();
//     _serviceIDController = TextEditingController(
//       text: widget.item.serviceID?.toString() ?? '',
//     );
//     _descriptionController = TextEditingController(
//       text: widget.item.description ?? '',
//     );
//     _descriptionArController = TextEditingController(
//       text: widget.item.descriptionAr ?? '',
//     );
//   }
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
//       title: const Text('Edit Service Item'),
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
//       final updatedItem = ServiceItemDetails(
//         serviceID: int.tryParse(_serviceIDController.text),
//         description: _descriptionController.text,
//         descriptionAr: _descriptionArController.text,
//       );
//       Navigator.pop(context, updatedItem);
//     }
//   }
// }
