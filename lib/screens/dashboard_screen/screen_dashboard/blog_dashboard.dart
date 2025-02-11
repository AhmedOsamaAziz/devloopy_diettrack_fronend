// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:ui/constants/constants.dart';
// import 'package:ui/constants/custom_button.dart';
// import 'package:ui/constants/enums.dart';
// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/model/blog/blog_create.dart';
// import 'package:ui/model/blog_group/blog_group.dart';
// import 'package:ui/model/blog/blog_list.dart';
// import 'package:ui/screens/admin/constants/ghaps.dart';
// import 'package:ui/services/blog_service/blog_service.dart';

// class BlogDashboard extends StatefulWidget {
//   const BlogDashboard({super.key});

//   @override
//   State<BlogDashboard> createState() => _BlogDashboardState();
// }

// class _BlogDashboardState extends State<BlogDashboard> {
//   List<BlogList> blogs = [];
//   bool isLoading = true;
//   BlogService blogService = BlogService();

//   @override
//   void initState() {
//     super.initState();
//     _fetchBlogs();
//   }

//   Future<void> _fetchBlogs() async {
//     final response = await blogService.getAllBlogs();
//     if (response.status == ResponseStatus.success) {
//       setState(() {
//         blogs = response.obj as List<BlogList>;
//         isLoading = false;
//       });
//     } else {
//       setState(() => isLoading = false);
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to load blogs: ${response.message}')),
//         );
//       }
//     }
//   }

//   Future<void> _openAddForm() async {
//     final authorController = TextEditingController();
//     final titleController = TextEditingController();
//     final titleArController = TextEditingController();
//     final descriptionController = TextEditingController();
//     final subDescriptionController = TextEditingController();
//     final imageUrlController = TextEditingController();
//     final videoUrlController = TextEditingController();

//     // قيم افتراضية لـ groupId و authorId حسب المطلوب من الـ API.
//     const int defaultGroupId = 1;
//     const String defaultAuthorId = "0d26019d-54c8-4b3d-a67d-84623b466f3c";

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Add Blog'),
//           content: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextField(
//                   controller: authorController,
//                   decoration: const InputDecoration(labelText: 'Author'),
//                 ),
//                 TextField(
//                   controller: titleController,
//                   decoration: const InputDecoration(labelText: 'Title'),
//                 ),
//                 TextField(
//                   controller: titleArController,
//                   decoration: const InputDecoration(labelText: 'Title Arabic'),
//                 ),
//                 TextField(
//                   controller: descriptionController,
//                   decoration: const InputDecoration(labelText: 'Description'),
//                 ),
//                 TextField(
//                   controller: subDescriptionController,
//                   decoration:
//                       const InputDecoration(labelText: 'Sub Description'),
//                 ),
//                 TextField(
//                   controller: imageUrlController,
//                   decoration: const InputDecoration(labelText: 'Image URL'),
//                 ),
//                 TextField(
//                   controller: videoUrlController,
//                   decoration: const InputDecoration(labelText: 'Video URL'),
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               child: const Text('Cancel'),
//               onPressed: () => Navigator.of(context).pop(),
//             ),
//             TextButton(
//               child: const Text('Save'),
//               onPressed: () async {
//                 final newBlog = BlogCreate(
//                   title: titleController.text,
//                   titleAr: titleArController.text,
//                   description: descriptionController.text,
//                   descriptionAr: subDescriptionController.text,
//                   blogType: BlogType.blog,
//                   imageUrl: imageUrlController.text,
//                   videoUrl: videoUrlController.text,
//                   groupId: defaultGroupId,
//                   authorId: defaultAuthorId,
//                 );

//                 // طباعة الحمولة للتأكد من صحتها
//                 print("Payload: ${newBlog.toJson()}");

//                 // استدعاء الخدمة لإنشاء المدونة على الخادم.
//                 final response = await blogService.createNewBlogs(newBlog);
//                 if (response.status == ResponseStatus.success) {
//                   Navigator.of(context).pop();
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Blog added successfully!')),
//                   );
//                   await _fetchBlogs(); // تحديث القائمة من الخادم.
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Error: ${response.message}')),
//                   );
//                   log(response.message.toString());
//                 }
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   /// Opens a dialog to edit an existing blog.
//   Future<void> _openEditForm(BlogList blog) async {
//     final authorController = TextEditingController(text: blog.author ?? '');
//     final titleController = TextEditingController(text: blog.title);
//     final titleArController = TextEditingController(text: blog.titleAr);
//     final descriptionController = TextEditingController(text: blog.description);
//     final subDescriptionController =
//         TextEditingController(text: blog.descriptionAr);
//     final imageUrlController = TextEditingController(text: blog.imageUrl ?? '');
//     final videoUrlController = TextEditingController(text: blog.videoUrl ?? '');

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Edit Blog'),
//           content: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextField(
//                   controller: authorController,
//                   decoration: const InputDecoration(labelText: 'Author'),
//                 ),
//                 TextField(
//                   controller: titleController,
//                   decoration: const InputDecoration(labelText: 'Title'),
//                 ),
//                 TextField(
//                   controller: titleArController,
//                   decoration: const InputDecoration(labelText: 'Title Arabic'),
//                 ),
//                 TextField(
//                   controller: descriptionController,
//                   decoration: const InputDecoration(labelText: 'Description'),
//                 ),
//                 TextField(
//                   controller: subDescriptionController,
//                   decoration:
//                       const InputDecoration(labelText: 'Sub Description'),
//                 ),
//                 TextField(
//                   controller: imageUrlController,
//                   decoration: const InputDecoration(labelText: 'Image URL'),
//                 ),
//                 TextField(
//                   controller: videoUrlController,
//                   decoration: const InputDecoration(labelText: 'Video URL'),
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               child: const Text('Cancel'),
//               onPressed: () => Navigator.of(context).pop(),
//             ),
//             TextButton(
//               child: const Text('Save'),
//               onPressed: () async {
//                 // تحديث خصائص المدونة.
//                 setState(() {
//                   blog.author = authorController.text;
//                   blog.title = titleController.text;
//                   blog.titleAr = titleArController.text;
//                   blog.description = descriptionController.text;
//                   blog.descriptionAr = subDescriptionController.text;
//                   blog.imageUrl = imageUrlController.text;
//                   blog.videoUrl = videoUrlController.text;
//                 });
//                 Navigator.of(context).pop();
//                 // يمكن استدعاء خدمة التحديث هنا إن أردت.
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       color: ColorsApp.MainColorbackgraund,
//       child: Column(
//         children: [
//           CustomButton(
//             onPressed: _openAddForm,
//             text: 'Add Blog',
//             colortxt: ColorsApp.MainColorbackgraund,
//           ),
//           gapH16,
//           Expanded(
//             child: isLoading
//                 ? const Center(child: CircularProgressIndicator())
//                 : SingleChildScrollView(
//                     scrollDirection: Axis.vertical,
//                     child: DataTable(
//                       sortColumnIndex: 0,
//                       sortAscending: true,
//                       dividerThickness: 2,
//                       showBottomBorder: true,
//                       columns: const [
//                         DataColumn(label: Text("Group ID")),
//                         DataColumn(label: Text("Author")),
//                         DataColumn(label: Text("Title")),
//                         DataColumn(label: Text("TitleAr")),
//                         DataColumn(label: Text("Description")),
//                         DataColumn(label: Text("SubDescription")),
//                         DataColumn(label: Text("Image URL")),
//                         DataColumn(label: Text("Video URL")),
//                         DataColumn(label: Text("Actions")),
//                       ],
//                       rows: blogs.map((blog) {
//                         return DataRow(cells: [
//                           DataCell(SizedBox(
//                               width: 20,
//                               child: Text(blog.group.id.toString()))),
//                           DataCell(SizedBox(
//                               width: 30, child: Text(blog.author ?? 'N/A'))),
//                           DataCell(
//                               SizedBox(width: 70, child: Text(blog.title))),
//                           DataCell(
//                               SizedBox(width: 70, child: Text(blog.titleAr))),
//                           DataCell(Text(blog.description)),
//                           DataCell(Text(blog.descriptionAr)),
//                           DataCell(SizedBox(
//                               width: 50, child: Text(blog.imageUrl ?? 'N/A'))),
//                           DataCell(SizedBox(
//                               width: 50, child: Text(blog.videoUrl ?? 'N/A'))),
//                           DataCell(
//                             Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 CustomButton(
//                                   text: 'Edit',
//                                   colortxt: ColorsApp.MainColorbackgraund,
//                                   onPressed: () => _openEditForm(blog),
//                                 ),
//                                 const SizedBox(width: 8),
//                                 CustomButton(
//                                   text: 'Delete',
//                                   colortxt: ColorsApp.MainColorbackgraund,
//                                   onPressed: () {
//                                     // تنفيذ الحذف عند الحاجة.
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ]);
//                       }).toList(),
//                     ),
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/constants/enums.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/blog/blog_create.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/model/blog/blog_update.dart';
import 'package:ui/screens/admin/constants/ghaps.dart';
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
    final response = await blogService.getAllBlogs();
    if (response.status == ResponseStatus.success) {
      setState(() {
        blogs = response.obj as List<BlogList>;
        isLoading = false;
      });
    } else {
      setState(() => isLoading = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load blogs: ${response.message}')),
        );
      }
    }
  }

  Future<void> _openAddForm() async {
    final titleController = TextEditingController();
    final titleArController = TextEditingController();
    final descriptionController = TextEditingController();
    final subDescriptionController = TextEditingController();
    final imageUrlController = TextEditingController();
    final videoUrlController = TextEditingController();

    // قيم افتراضية لـ groupId و authorId حسب المطلوب من الـ API.
    const int defaultGroupId = 1;
    const String defaultAuthorId = "0d26019d-54c8-4b3d-a67d-84623b466f3c";

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Blog'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // تم حذف حقل Author من هنا
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
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text('Save'),
              onPressed: () async {
                // إنشاء كائن BlogCreate مع تمرير القيم الافتراضية للمجموعة والمؤلف.
                final newBlog = BlogCreate(
                  title: titleController.text,
                  titleAr: titleArController.text,
                  description: descriptionController.text,
                  descriptionAr: subDescriptionController.text,
                  blogType: BlogType.blog,
                  imageUrl: imageUrlController.text,
                  videoUrl: videoUrlController.text,
                  groupId: defaultGroupId,
                  authorId: defaultAuthorId,
                );

                print("Payload: ${newBlog.toJson()}");

                // استدعاء الخدمة لإنشاء المدونة على الخادم.
                final response = await blogService.createNewBlogs(newBlog);
                if (response.status == ResponseStatus.success) {
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        backgroundColor: Colors.green[700],
                        content: const Text('Blog added successfully!')),
                  );
                  await _fetchBlogs(); // تحديث القائمة من الخادم.
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        backgroundColor: Colors.red[600],
                        content: Text('Error: ${response.message}')),
                  );
                  log(response.message.toString());
                }
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _openEditForm(BlogList blog) async {
    final titleController = TextEditingController(text: blog.title);
    final titleArController = TextEditingController(text: blog.titleAr);
    final descriptionController = TextEditingController(text: blog.description);
    final subDescriptionController =
        TextEditingController(text: blog.descriptionAr);
    final imageUrlController = TextEditingController(text: blog.imageUrl ?? '');
    final videoUrlController = TextEditingController(text: blog.videoUrl ?? '');

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Blog'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
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
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text('Save'),
              onPressed: () async {
                  final editedBlog = BlogUpdate(
                  id: blog.id,
                  groupId: blog.group.id, 
                  title: titleController.text,
                  titleAr: titleArController.text,
                  description: descriptionController.text,
                  descriptionAr: subDescriptionController.text,
                  blogType: blog.blogType,          
                  imageUrl: imageUrlController.text,
                  videoUrl: videoUrlController.text,
                );

                 final response = await blogService.updateBlog(editedBlog);
                if (response.status == ResponseStatus.success) {
                  Navigator.of(context).pop(); 
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Blog updated successfully!')),
                  );
                  await _fetchBlogs();            
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error: ${response.message}')),
                  );
                  log(response.message.toString());
                }
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _deleteBlog(BlogList blog) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirm Delete'),
          content: const Text('Are you sure you want to delete this blog?'),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            TextButton(
              child: const Text('Delete'),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        );
      },
    );
    if (confirm == true) {
      setState(() {
        blogs.remove(blog);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Blog deleted successfully!')),
      );
      // يمكنك استدعاء خدمة الحذف على الخادم هنا إذا لزم الأمر.
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
            onPressed: _openAddForm,
            text: 'Add Blog',
            colortxt: ColorsApp.MainColorbackgraund,
          ),
          gapH16,
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                      sortColumnIndex: 0,
                      sortAscending: true,
                      dividerThickness: 2,
                      showBottomBorder: true,
                      columns: const [
                        DataColumn(label: Text("Title")),
                        DataColumn(label: Text("TitleAr")),
                        DataColumn(label: Text("Description")),
                        DataColumn(label: Text("SubDescription")),
                        DataColumn(label: Text("Image URL")),
                        DataColumn(label: Text("Video URL")),
                        DataColumn(label: Text("Actions")),
                      ],
                      rows: blogs.map((blog) {
                        return DataRow(cells: [
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
                          DataCell(
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomButton(
                                  text: 'Edit',
                                  colortxt: ColorsApp.MainColorbackgraund,
                                  onPressed: () =>
                                      _openEditForm(blog ),
                                ),
                                const SizedBox(width: 8),
                                CustomButton(
                                  text: 'Delete',
                                  colortxt: ColorsApp.MainColorbackgraund,
                                  onPressed: () => _deleteBlog(blog),
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
