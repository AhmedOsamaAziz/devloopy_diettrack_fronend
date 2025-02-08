import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/constants/enums.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/blog_group/blog_group.dart';
import 'package:ui/screens/admin/constants/ghaps.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/services/blog_service/blog_service.dart';   

class BlogDashboard extends StatefulWidget {
  const BlogDashboard({super.key});

  @override
  State<BlogDashboard> createState() => _BlogDashboardState();
}

class _BlogDashboardState extends State<BlogDashboard> {
  List<BlogList> blogs = [];          
  bool isLoading = true;

  BlogService blogService = BlogService();

  @override
  void initState() {
    super.initState();
    _fetchBlogs();
  }

  Future<void> _fetchBlogs() async {
    final response =
        await blogService.getAllBlogs();   
    if (response.status == ResponseStatus.success) {
      setState(() {
        blogs = response.obj as List<BlogList>;
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load blogs: ${response.message}')),
        );
      }
    }
  }

  Future<void> _openForm(BlogList? blog) async {
    final idController = TextEditingController();
    final authorController = TextEditingController();
    final titleController = TextEditingController();
    final titleArController = TextEditingController();
    final descriptionController = TextEditingController();
    final subDescriptionController = TextEditingController();
    final imageUrlController = TextEditingController();
    final videoUrlController = TextEditingController();
    final publishDateController = TextEditingController();

     if (blog != null) {
      idController.text = blog.id.toString();
      authorController.text = blog.author ?? '';
      titleController.text = blog.title;
      titleArController.text = blog.titleAr;
      descriptionController.text = blog.description;
      subDescriptionController.text = blog.descriptionAr;
      imageUrlController.text = blog.imageUrl ?? '';
      videoUrlController.text = blog.videoUrl ?? '';
      publishDateController.text =
          DateFormat('yyyy-MM-dd HH:mm').format(blog.publishDate);
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(blog == null ? 'Add Blog' : 'Edit Blog'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: idController,
                  decoration: const InputDecoration(labelText: 'ID'),
                ),
                TextField(
                  controller: authorController,
                  decoration: const InputDecoration(labelText: 'Author'),
                ),
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(labelText: 'Title'),
                ),
                TextField(
                  controller: titleArController,
                  decoration: const InputDecoration(labelText: 'Title Arabic'),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(labelText: 'Description'),
                ),
                TextField(
                  controller: subDescriptionController,
                  decoration:
                      const InputDecoration(labelText: 'Sub Description'),
                ),
                TextField(
                  controller: imageUrlController,
                  decoration: const InputDecoration(labelText: 'Image URL'),
                ),
                TextField(
                  controller: videoUrlController,
                  decoration: const InputDecoration(labelText: 'Video URL'),
                ),
                // حقل التاريخ مع أيقونة
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: publishDateController,
                        decoration: const InputDecoration(
                            labelText: 'Publish Date & Time'),
                        readOnly: true,   
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.calendar_today),    
                      onPressed: () async {
                         final DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (pickedDate != null) {
                           final TimeOfDay? pickedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          if (pickedTime != null) {
                             final DateTime fullDateTime = DateTime(
                              pickedDate.year,
                              pickedDate.month,
                              pickedDate.day,
                              pickedTime.hour,
                              pickedTime.minute,
                            );
                            publishDateController.text =
                                '${DateFormat('yyyy-MM-dd').format(fullDateTime)} ${DateFormat('HH:mm').format(fullDateTime)}';
                          }
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Save'),
              onPressed: () {
                if (blog == null) {
                  setState(() {
                    blogs.add(BlogList(
                      group: BlogGroup(
                        id: 1,
                        groupName: String.fromCharCode(65 + blogs.length % 26),
                      ),
                      id: int.tryParse(idController.text) ?? 0,
                      author: authorController.text,
                      title: titleController.text,
                      titleAr: titleArController.text,
                      description: descriptionController.text,
                      descriptionAr: subDescriptionController.text,
                      imageUrl: imageUrlController.text,
                      videoUrl: videoUrlController.text,
                      publishDate: DateFormat('yyyy-MM-dd HH:mm')
                          .parse(publishDateController.text),
                      blogType: BlogType.blog,
                    ));
                  });
                } else {
                   setState(() {
                    blog.id = int.tryParse(idController.text) ?? 0;
                    blog.author = authorController.text;
                    blog.title = titleController.text;
                    blog.titleAr = titleArController.text;
                    blog.description = descriptionController.text;
                    blog.descriptionAr = subDescriptionController.text;
                    blog.imageUrl = imageUrlController.text;
                    blog.videoUrl = videoUrlController.text;
                    blog.publishDate = DateFormat('yyyy-MM-dd HH:mm')
                        .parse(publishDateController.text);
                  });
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _deleteBlog(int blogId) async {
     final bool? confirmDelete = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirm Delete'),
          content: const Text('Are you sure you want to delete this blog?'),
          actions: [
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop(false);        
              },
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );

     if (confirmDelete == true) {
      final response = await blogService.deleteBlogs(blogs, blogId);
      if (response.status == ResponseStatus.success) {
        setState(() {
          blogs = response.obj as List<BlogList>; // تحديث القائمة المحلية
        });
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Blog deleted successfully!')),
          );
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text('Failed to delete blog: ${response.message}')),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: ColorsApp.MainColorbackgraund,
      child: Column(
        children: [
          CustomButton(
            onPressed: () => _openForm(null),
            text: 'Add Blog',
            colortxt: ColorsApp.MainColorbackgraund,
          ),
          gapH16,
          Expanded(
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator()) // عرض مؤشر التحميل
                : SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                      sortColumnIndex: 0,
                      sortAscending: true,
                      dividerThickness: 2,
                      showBottomBorder: true,
                      columns: const [
                        DataColumn(label: Text("id"), numeric: true),
                        DataColumn(label: Text("author")),
                        DataColumn(label: Text("title")),
                        DataColumn(label: Text("titleAr")),
                        DataColumn(label: Text("description")),
                        DataColumn(label: Text("subDescription")),
                        DataColumn(label: Text("imageUrl")),
                        DataColumn(label: Text("videoURL")),
                        DataColumn(label: Text("date")),
                        DataColumn(label: Text("Actions")),
                      ],
                      rows: blogs.map((blog) {
                        return DataRow(cells: [
                          DataCell(SizedBox(
                              width: 20, child: Text(blog.id.toString()))),
                          DataCell(SizedBox(
                              width: 30, child: Text(blog.author ?? 'N/A'))),
                          DataCell(
                              SizedBox(width: 70, child: Text(blog.title))),
                          DataCell(
                              SizedBox(width: 70, child: Text(blog.titleAr))),
                          DataCell(Text(blog.description)),
                          DataCell(Text(blog.descriptionAr)),
                          DataCell(SizedBox(
                              width: 50, child: Text(blog.imageUrl ?? 'N/A'))),
                          DataCell(SizedBox(
                              width: 50, child: Text(blog.videoUrl ?? 'N/A'))),
                          DataCell(SizedBox(
                              width: 30,
                              child: Text(blog.publishDate.toString()))),
                          DataCell(
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomButton(
                                  text: 'Edit',
                                  colortxt: ColorsApp.MainColorbackgraund,
                                  onPressed: () => _openForm(blog),
                                ),
                                const SizedBox(width: 8),
                                CustomButton(
                                  text: 'Delete',
                                  colortxt: ColorsApp.MainColorbackgraund,
                                  onPressed: () => _deleteBlog(blog.id),
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
