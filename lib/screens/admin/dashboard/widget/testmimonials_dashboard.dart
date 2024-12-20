import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/data/testmimonials.dart';
import 'package:ui/model/testimonials/testimonial_list.dart';

class TestimonialsDashBoard extends StatefulWidget {
  const TestimonialsDashBoard({super.key});

  @override
  _TestimonialsDashBoardState createState() => _TestimonialsDashBoardState();
}

class _TestimonialsDashBoardState extends State<TestimonialsDashBoard> {
  @override
  Widget build(BuildContext context) {
    return const DashBoardBady();
  }
}

class DashBoardBady extends StatefulWidget {
  const DashBoardBady({super.key});

  @override
  State<DashBoardBady> createState() => _DashBoardBadyState();
}

class _DashBoardBadyState extends State<DashBoardBady> {
  final List<TestimonialList> _rows = testimonialData;

  @override
  void initState() {
    super.initState();
    _loadTestimonialsFromSharedPref();
  }

  Future<void> _loadTestimonialsFromSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final String? testimonialJson = prefs.getString('testimonials');
    if (testimonialJson != null) {
      final List<dynamic> testimonialList = jsonDecode(testimonialJson);
      setState(() {
        _rows.clear();
        for (var testimonialMap in testimonialList) {
          _rows.add(TestimonialList.fromJson(testimonialMap));
        }
      });
    }
  }

  Future<void> _saveTestimonialsToSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final List<Map<String, dynamic>> testimonialList =
        _rows.map((testimonial) => testimonial.toJson()).toList();
    prefs.setString('testimonials', jsonEncode(testimonialList));
  }

  void openForm({int? index}) async {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final videoUrlController = TextEditingController();

    if (index != null) {
      final row = _rows[index];
      titleController.text = row.title;
      descriptionController.text = row.description;
      videoUrlController.text = row.videoUrl;
    }

    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:
              Text(index == null ? 'Add New Testimonial' : 'Edit Testimonial'),
          content: SingleChildScrollView(
            child: SizedBox(
              width: 450,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(labelText: 'Title'),
                  ),
                  TextField(
                    controller: descriptionController,
                    decoration: const InputDecoration(labelText: 'Description'),
                  ),
                  TextField(
                    controller: videoUrlController,
                    decoration: const InputDecoration(labelText: 'Video URL'),
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
                  'title': titleController.text,
                  'description': descriptionController.text,
                  'videoUrl': videoUrlController.text,
                });
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );

    if (result != null) {
      setState(() {
        try {
          if (index == null) {
            _rows.add(TestimonialList(
              title: result['title']!,
              description: result['description']!,
              videoUrl: result['videoUrl']!,
            ));
          } else {
            _rows[index]
              ..title = result['title']!
              ..description = result['description']!
              ..videoUrl = result['videoUrl']!;
          }
          _saveTestimonialsToSharedPref();
        } catch (e) {
          log("Error: $e");
        }
      });
    }
  }

  void _deleteRow(int index) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Deletion'),
          content: const Text('Are you sure you want to delete this row?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(true), // Confirm
              child: const Text('Delete'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(false), // Cancel
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );

    if (confirm == true) {
      setState(() {
        _rows.removeAt(index);
        _saveTestimonialsToSharedPref();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => openForm(),
              child: const Text("Add Testimonial"),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text("Title")),
                    DataColumn(label: Text("Description")),
                    DataColumn(label: Text("Video URL")),
                    DataColumn(label: Text("Actions")),
                  ],
                  rows: _rows.asMap().entries.map((entry) {
                    final index = entry.key;
                    final row = entry.value;

                    return DataRow(cells: [
                      DataCell(Text(row.title)),
                      DataCell(Text(row.description)),
                      DataCell(Text(row.videoUrl)),
                      DataCell(
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () => openForm(index: index),
                              child: const Text('Edit'),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: () => _deleteRow(index),
                              child: const Text('Delete'),
                            ),
                          ],
                        ),
                      ),
                    ]);
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
