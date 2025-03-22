import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/model/testimonials/testimonial_list.dart';

class EditTestimonial extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // Key for form validation
  final TestimonialList testimonial;
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final videoUrlController = TextEditingController();

  EditTestimonial({required this.testimonial, super.key}) {
    titleController.text = testimonial.title;
    descriptionController.text = testimonial.description;
    videoUrlController.text = testimonial.videoUrl;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsApp.OUTLINECOLOR,
      title: const Text('Edit Testimonial'),
      content: SingleChildScrollView(
        child: SizedBox(
          width: 450,
          child: Form(
            key: _formKey, // Assign the form key
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(labelText: 'Title'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(labelText: 'Description'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: videoUrlController,
                  decoration: const InputDecoration(labelText: 'Video URL'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a video URL';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        CustomButton(
          colortxt: ColorsApp.ColorCardFeature,
          onPressed: () => Navigator.of(context).pop(null),
          text: 'Cancel',
        ),
        CustomButton(
          colortxt: ColorsApp.ColorCardFeature,
          colorbtn: Colors.red,
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // If all fields are valid, return the data
              Navigator.of(context).pop({
                'title': titleController.text,
                'description': descriptionController.text,
                'videoUrl': videoUrlController.text,
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    duration: const Duration(seconds: 2),
                    content: const Text('Testimonial updated successfully!'),
                    backgroundColor: Colors.green[700]),
              );
            }
          },
          text: 'Save',
        ),
      ],
    );
  }
}
