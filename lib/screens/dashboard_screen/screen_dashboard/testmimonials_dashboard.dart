import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
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

  void addTestimonial() async {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final videoUrlController = TextEditingController();

    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add New Testimonial'),
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
        final testimonialCreate = TestimonialCreate(
          title: result['title']!,
          description: result['description']!,
          videoUrl: result['videoUrl']!,
        );

        print('Sending payload: ${testimonialCreate.toJson()}');

        final response =
            await _testimonialService.createTestimonial(testimonialCreate);

        if (response.status == ResponseStatus.success) {
          setState(() {
            _rows.add(response.obj);
          });
          _saveTestimonialsToSharedPref();
        } else {
          log('Failed to add testimonial: ${response.message}');
        }
      } catch (e) {
        if (e is DioException) {
          log('Dio Error: ${e.message}');
        } else {
          log('Error: $e');
        }
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void editTestimonial(int index) async {
    final row = _rows[index];
    final titleController = TextEditingController(text: row.title);
    final descriptionController = TextEditingController(text: row.description);
    final videoUrlController = TextEditingController(text: row.videoUrl);

    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Testimonial'),
          content: SingleChildScrollView(
            child: SizedBox(
              width: 450,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                      controller: titleController,
                      decoration: const InputDecoration(labelText: 'Title')),
                  TextField(
                      controller: descriptionController,
                      decoration:
                          const InputDecoration(labelText: 'Description')),
                  TextField(
                      controller: videoUrlController,
                      decoration:
                          const InputDecoration(labelText: 'Video URL')),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(null),
                child: const Text('Cancel')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop({
                    'title': titleController.text,
                    'description': descriptionController.text,
                    'videoUrl': videoUrlController.text,
                  });
                },
                child: const Text('Save')),
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
          id: row.id.toString(),
          title: result['title']!,
          description: result['description']!,
          videoUrl: result['videoUrl']!,
        );

        final response =
            await _testimonialService.updateTestimonial(testimonialUpdate);
        if (response.status == ResponseStatus.success) {
          setState(() {
            _rows[index] = response.obj as TestimonialList;
          });
          _saveTestimonialsToSharedPref();
        } else {
          log('Update failed: ${response.message}');
        }
      } catch (e) {
        log('Error: $e');
      } finally {
        setState(() => _isLoading = false);
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
              onPressed: () => addTestimonial()),
          const SizedBox(height: 20),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                      headingTextStyle: const TextStyle(color: Colors.white),
                      headingRowColor:
                          WidgetStateProperty.all(ColorsApp.TextColor),
                      columns: const [
                        DataColumn(label: Text("Id")),
                        DataColumn(label: Text("Title")),
                        DataColumn(label: Text("Description")),
                        DataColumn(label: Text("Video URL")),
                        DataColumn(label: Text("Actions")),
                      ],
                      rows: _rows.asMap().entries.map((entry) {
                        final index = entry.key;
                        final row = entry.value;

                        return DataRow(cells: [
                          DataCell(SizedBox(
                              width: 40, child: Text(row.id.toString()))),
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
                                  onPressed: () => editTestimonial(index),
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

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ui/constants/custom_button.dart';
// import 'package:ui/cubits/testimonils/dashboard_cubit/dashborad_tesmimonial_cubit.dart';
// import 'package:ui/cubits/testimonils/dashboard_cubit/dashborad_tesmimonial_state.dart';
// import 'package:ui/model/testimonials/testimonial_create.dart';
// import 'package:ui/model/testimonials/testimonial_list.dart';
// import 'package:ui/services/testimonial_service/testimonial_service.dart';

// class TestimonialsDashBoard extends StatefulWidget {
//   const TestimonialsDashBoard({super.key});

//   @override
//   _TestimonialsDashBoardState createState() => _TestimonialsDashBoardState();
// }

// class _TestimonialsDashBoardState extends State<TestimonialsDashBoard> {
//   @override
//   void initState() {
//     super.initState();
//     // Call loadTestimonials when the widget is initialized
//     context.read<DashboardTestimonialCubit>().loadTestimonials();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Testimonials Dashboard"),
//       ),
//       body: BlocBuilder<DashboardTestimonialCubit, TestimonialDashboardState>(
//         builder: (context, state) {
//           if (state is TestimonialLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is TestimonialLoaded) {
//             if (state.testimonials.isEmpty) {
//               return const Center(child: Text("No testimonials available"));
//             }
//             return DashBoardBady(testimonials: state.testimonials);
//           } else if (state is TestimonialError) {
//             return Center(child: Text(state.message));
//           } else {
//             return const Center(child: Text("No data"));
//           }
//         },
//       ),
//     );
//   }
// }

// class DashBoardBady extends StatelessWidget {
//   final List<TestimonialList> testimonials;

//   const DashBoardBady({super.key, required this.testimonials});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(25),
//       child: Column(
//         children: [
//           CustomButton(
//             text: "Add Testimonial",
//             onPressed: () async {
//               await context
//                   .read<DashboardTestimonialCubit>()
//                   .addTestimonial(testimonials as TestimonialList);
//             },
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: DataTable(
//                 columns: const [
//                   DataColumn(label: Text("Id")),
//                   DataColumn(label: Text("Title")),
//                   DataColumn(label: Text("Description")),
//                   DataColumn(label: Text("Video URL")),
//                   DataColumn(label: Text("Actions")),
//                 ],
//                 rows: testimonials.map((testimonial) {
//                   return DataRow(cells: [
//                     DataCell(Text(testimonial.id.toString())),
//                     DataCell(Text(testimonial.title)),
//                     DataCell(SizedBox(
//                         width: 70, child: Text(testimonial.description))),
//                     DataCell(SizedBox(
//                         width: 350, child: Text(testimonial.videoUrl))),
//                     DataCell(
//                       Row(
//                         children: [
//                           CustomButton(
//                             text: 'Edit',
//                             onPressed: () {
//                               context
//                                   .read<DashboardTestimonialCubit>()
//                                   .updateTestimonial(testimonial);
//                             },
//                           ),
//                           const SizedBox(width: 8),
//                           CustomButton(
//                             text: 'Delete',
//                             onPressed: () {
//                               context
//                                   .read<DashboardTestimonialCubit>()
//                                   .deleteTestimonial(testimonial.id.toString());
//                             },
//                           ),
//                         ],
//                       ),
//                     ),
//                   ]);
//                 }).toList(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
