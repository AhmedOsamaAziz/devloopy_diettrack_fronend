import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/constants/enums.dart';
import 'package:ui/model/blog/blog_create.dart';
import 'package:ui/screens/admin/dashboard/function/function_helper.dart';

class BlogListDashBoard extends StatefulWidget {
  const BlogListDashBoard({super.key});

  @override
  _BlogListDashBoardState createState() => _BlogListDashBoardState();
}

class _BlogListDashBoardState extends State<BlogListDashBoard> {
  final BlogHelper _blogHelper = BlogHelper();
  final List<BlogCreate> _rows = [];

  @override
  void initState() {
    super.initState();
    _loadBlogs();
  }

  Future<void> _loadBlogs() async {
    final loadedBlogs = await _blogHelper.loadBlogsFromSharedPref();
    setState(() {
      _rows.clear();
      _rows.addAll(loadedBlogs);
    });
  }

  Future<void> _saveBlogs() async {
    await _blogHelper.saveBlogsToSharedPref(_rows);
  }

  void openForm({int? index}) async {
    final blog = index != null ? _rows[index] : null;
    final result = await _blogHelper.openBlogForm(
        context: context, index: index, blog: blog);

    if (result != null) {
      setState(() {
        if (index == null) {
          // إضافة سجل جديد
          _rows.add(BlogCreate(
            title: result['title']!,
            titleAr: result['titleAr']!,
            description: result['description']!,
            descriptionAr: result['descriptionAr']!,
            blogType: BlogType.values.firstWhere(
              (e) => e.toString() == result['blogType'],
              orElse: () => BlogType.article,
            ),
            imageUrl: result['imageUrl']!,
            videoUrl: result['videoUrl']!,
            groupId: 1,   
            authorId:
                "0d26019d-54c8-4b3d-a67d-84623b466f3c",   
          ));
        } else {
           _rows[index] = BlogCreate(
            title: result['title']!,
            titleAr: result['titleAr']!,
            description: result['description']!,
            descriptionAr: result['descriptionAr']!,
            blogType: BlogType.values.firstWhere(
              (e) => e.toString() == result['blogType'],
              orElse: () => BlogType.article,
            ),
            imageUrl: result['imageUrl']!,
            videoUrl: result['videoUrl']!,
            groupId: 1,    
            authorId: "0d26019d-54c8-4b3d-a67d-84623b466f3c",
          );
        }
        _saveBlogs();
      });
    }
  }

  void _deleteRow(int index) async {
    final confirm = await _blogHelper.confirmDeletion(context);
    if (confirm) {
      setState(() {
        _rows.removeAt(index);
        _saveBlogs();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.OUTLINECOLOR,
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          CustomButton(
            onPressed: () => openForm(),
            text: 'Add Row',
            colortxt: ColorsApp.MainColorbackgraund,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text("ID")),
                  DataColumn(label: Text("Title")),
                  DataColumn(label: Text("TitleAr")),
                  DataColumn(label: Text("Description")),
                  DataColumn(label: Text("BlogType")),
                  DataColumn(label: Text("Actions")),
                ],
                rows: _rows.asMap().entries.map((entry) {
                  final index = entry.key;
                  final row = entry.value;

                  return DataRow(cells: [
                    // نستخدم الفهرس + 1 كمعرف
                    DataCell(Text("${index + 1}")),
                    DataCell(Text(row.title)),
                    DataCell(Text(row.titleAr)),
                    DataCell(Text(row.description)),
                    DataCell(Text(row.blogType.toString())),
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
