import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/testimonials/testimonial_create.dart';
import 'package:ui/model/testimonials/testimonial_list.dart';
import 'package:ui/model/testimonials/testimonial_update.dart';
import 'package:ui/services/testimonial_service/testimonial_service.dart';

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
  final List<TestimonialList> _rows = [];
  final TestimonialService _testimonialService = TestimonialService();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadTestimonials();
  }

  Future<void> _loadTestimonials() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Load testimonials from SharedPreferences
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

      // Fetch testimonials from the API (you need to implement this in your service)
      final response = await _testimonialService.getAllTestimonial(
          limit: const int.fromEnvironment('limit'), page: 1);
      if (response.status == ResponseStatus.success) {
        setState(() {
          _rows.clear();
          _rows.addAll(response.obj);
        });
        _saveTestimonialsToSharedPref(); // Save API data to SharedPreferences
      } else {
        log('Failed to load testimonials from API: ${response.message}');
      }
    } catch (e) {
      log('Error loading testimonials: $e');
    } finally {
      setState(() {
        _isLoading = false;
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
        _isLoading = true;
      });

      try {
        final testimonialUpdate = TestimonialUpdate(
          id: index != null
              ? _rows[index].id
              : null, // Use the existing ID for updates
          title: result['title']!,
          description: result['description']!,
          videoUrl: result['videoUrl']!,
        );

        if (index == null) {
          // Add new testimonial
          final response = await _testimonialService.createTestimonial(
            TestimonialCreate(
              id: DateTime.now()
                  .toString(), // Generate a new ID for new testimonials
              title: testimonialUpdate.title,
              description: testimonialUpdate.description,
              videoUrl: testimonialUpdate.videoUrl,
            ),
          );

          if (response.status == ResponseStatus.success) {
            _rows.add(testimonialUpdate as TestimonialList);
            _saveTestimonialsToSharedPref(); // Save to SharedPreferences
          } else {
            log('Failed to add testimonial create: ${response.message}');
          }
        } else {
          // Edit existing testimonial
          final response =
              await _testimonialService.updateTestimonial(TestimonialUpdate(
            id: testimonialUpdate.id,
            title: testimonialUpdate.title,
            description: testimonialUpdate.description,
            videoUrl: testimonialUpdate.videoUrl,
          ));

          if (response.status == ResponseStatus.success) {
            _rows.add(testimonialUpdate as TestimonialList);
            _saveTestimonialsToSharedPref(); // Save to SharedPreferences
          } else {
            log('Failed to update testimonial update: ${response.message}');
          }
        }
      } catch (e) {
        log('Error: $e');
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
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
        _isLoading = true;
      });

      try {
        final testimonial = _rows[index];
        final response = await _testimonialService.deleteTestimonial(
          TestimonialCreate(
            id: testimonial.id.toString(),
            title: testimonial.title,
            description: testimonial.description,
            videoUrl: testimonial.videoUrl,
          ),
        );

        if (response.status == ResponseStatus.success) {
          _rows.removeAt(index);
          _saveTestimonialsToSharedPref(); // Save to SharedPreferences
        } else {
          log('Failed to delete testimonial: ${response.message}');
        }
      } catch (e) {
        log('Error: $e');
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.MainColorbackgraund,
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          CustomButton(
              colortxt: ColorsApp.MainColorbackgraund,
              text: "Add Testimonial",
              onPressed: () => openForm()),
          const SizedBox(height: 20),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
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
                          DataCell(SizedBox(width: 70, child: Text(row.title))),
                          DataCell(SizedBox(
                              width: 150, child: Text(row.description))),
                          DataCell(
                              SizedBox(width: 350, child: Text(row.videoUrl))),
                          DataCell(
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomButton(
                                  onPressed: () => openForm(index: index),
                                  text: 'Edit',
                                  colortxt: ColorsApp.MainColorbackgraund,
                                ),
                                const SizedBox(width: 8),
                                CustomButton(
                                  onPressed: () => _deleteRow(index),
                                  text: 'Delete',
                                  colortxt: ColorsApp.MainColorbackgraund,
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
    );
  }
}
