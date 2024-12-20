import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/model/blog/blog_create.dart';

class BlogHelper {
  Future<List<BlogCreate>> loadBlogsFromSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final String? blogsJson = prefs.getString('blogs');
    final List<BlogCreate> rows = [];

    if (blogsJson != null) {
      final List<dynamic> blogList = jsonDecode(blogsJson);
      for (var blogMap in blogList) {
        rows.add(BlogCreate.fromJson(blogMap));
      }
    }
    return rows;
  }

  Future<void> saveBlogsToSharedPref(List<BlogCreate> rows) async {
    final prefs = await SharedPreferences.getInstance();
    final List<Map<String, dynamic>> blogList =
        rows.map((blog) => blog.toJson()).toList();
    prefs.setString('blogs', jsonEncode(blogList));
  }

  Future<Map<String, String>?> openBlogForm({
    required BuildContext context,
    int? index,
    BlogCreate? blog,
  }) async {
    // Initialize controllers
    final idController = TextEditingController(text: blog?.id);
    final titleController = TextEditingController(text: blog?.title);
    final titleArController = TextEditingController(text: blog?.titleAr);
    final descriptionController =
        TextEditingController(text: blog?.description);
    final blogTypeController =
        TextEditingController(text: blog?.blogType.toString());
    final imageUrlController = TextEditingController(text: blog?.imageUrl);
    final videoUrlController = TextEditingController(text: blog?.videoUrl);

    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
              index == null ? 'Add New Row' : 'Edit Row ${blog?.title ?? ""}'),
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
                      controller: titleArController,
                      decoration: const InputDecoration(labelText: 'TitleAr')),
                  TextField(
                      controller: descriptionController,
                      decoration:
                          const InputDecoration(labelText: 'Description')),
                  TextField(
                      controller: blogTypeController,
                      decoration: const InputDecoration(labelText: 'BlogType')),
                  TextField(
                      controller: imageUrlController,
                      decoration: const InputDecoration(labelText: 'ImageUrl')),
                  TextField(
                      controller: videoUrlController,
                      decoration: const InputDecoration(labelText: 'VideoUrl')),
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
                  'id': idController.text,
                  'title': titleController.text,
                  'titleAr': titleArController.text,
                  'description': descriptionController.text,
                  'blogType': blogTypeController.text,
                  'imageUrl': imageUrlController.text,
                  'videoUrl': videoUrlController.text,
                });
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );

    return result;
  }

  Future<bool> confirmDeletion(BuildContext context) async {
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

    return confirm ?? false;
  }
}
