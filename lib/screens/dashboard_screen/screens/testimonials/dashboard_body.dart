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
import 'package:ui/screens/dashboard_screen/screens/testimonials/add_testimonial.dart';
import 'package:ui/screens/dashboard_screen/screens/testimonials/edit_testimonial.dart';
import 'package:ui/services/testimonial_service/testimonial_service.dart';

import 'testimonial_table.dart';

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
    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (BuildContext context) {
        return AddTestimonial();
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

        final response =
            await _testimonialService.createTestimonial(testimonialCreate);

        if (response.status == ResponseStatus.success) {
          setState(() {
            _rows.add(response.obj);
          });
          _saveTestimonialsToSharedPref();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Testimonial added successfully!'),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to add testimonial: ${response.message}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void editTestimonial(int index) async {
    final row = _rows[index];
    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (BuildContext context) {
        return EditTestimonial(testimonial: row);
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
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Testimonial updated successfully!'),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Update failed: ${response.message}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
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
          backgroundColor: ColorsApp.OUTLINECOLOR,
          title: const Text('Confirm Deletion'),
          content: const Text('Are you sure you want to delete this row?'),
          actions: [
            CustomButton(
              colortxt: ColorsApp.ColorCardFeature,
              onPressed: () => Navigator.of(context).pop(false), // Cancel
              text: 'Cancel',
            ),
            CustomButton(
              colortxt: ColorsApp.ColorCardFeature,
              colorbtn: Colors.red,
              onPressed: () => Navigator.of(context).pop(true), // Confirm
              text: 'Delete',
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
                : TestimonialTable(
                    rows: _rows,
                    editTestimonial: editTestimonial,
                    deleteRow: _deleteRow,
                  ),
          ),
        ],
      ),
    );
  }
}
