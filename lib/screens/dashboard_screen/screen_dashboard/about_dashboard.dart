import 'dart:typed_data'; // Add this import for Uint8List
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/data/about.dart';
import 'package:ui/model/about/about_list.dart';

class AboutDashBoard extends StatefulWidget {
  const AboutDashBoard({super.key});

  @override
  _AboutDashBoardState createState() => _AboutDashBoardState();
}

class _AboutDashBoardState extends State<AboutDashBoard> {
  @override
  Widget build(BuildContext context) {
    return const AboutDashBoardBody();
  }
}

class AboutDashBoardBody extends StatefulWidget {
  const AboutDashBoardBody({super.key});

  @override
  State<AboutDashBoardBody> createState() => _AboutDashBoardBodyState();
}

class _AboutDashBoardBodyState extends State<AboutDashBoardBody> {
  final List<AboutList> _rows = aboutData;
  final ImagePicker _picker = ImagePicker();
  final Map<int, Uint8List?> _imageCache = {};

  @override
  void initState() {
    super.initState();
    _loadServicesFromSharedPref();
  }

  Future<void> _loadServicesFromSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final String? aboutJson = prefs.getString('About');
    if (aboutJson != null) {
      final List<dynamic> aboutList = jsonDecode(aboutJson);
      setState(() {
        _rows.clear();
        _imageCache.clear();
        for (var aboutMap in aboutList) {
          _rows.add(AboutList.fromJson(aboutMap));
          if (aboutMap['image'] != null) {
            _imageCache[_rows.length - 1] = base64Decode(aboutMap['image']);
          }
        }
      });
    }
  }

  Future<void> _saveServicesToSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final List<Map<String, dynamic>> aboutList = _rows.map((row) {
      String? base64Image;
      int rowIndex = _rows.indexOf(row);
      if (_imageCache[rowIndex] != null) {
        base64Image = base64Encode(_imageCache[rowIndex]!);
      }
      return {
        'id': row.id,
        'title': row.title,
        'description': row.description,
        'image': base64Image,
        'date': row.date.toString(),
      };
    }).toList();

    await prefs.setString('About', jsonEncode(aboutList));
  }

  Future<void> _pickImage(
      TextEditingController imageController, int index) async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final bytes = await pickedFile.readAsBytes();
      setState(() {
        imageController.text = pickedFile.path;
        _imageCache[index] = bytes;
      });
    }
  }

  void openForm({int? index}) async {
    final idController = TextEditingController();
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final imageController = TextEditingController();
    final dateController = TextEditingController();

    if (index != null) {
      final row = _rows[index];
      idController.text = row.id.toString();
      titleController.text = row.title;
      descriptionController.text = row.description;
      imageController.text = row.image;
      dateController.text = row.date.toString();
    }

    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: ColorsApp.MainColorbackgraund,
          title: Text(index == null ? 'Add New About' : 'Edit Team'),
          content: SingleChildScrollView(
            child: SizedBox(
              width: 450,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                      controller: idController,
                      decoration: const InputDecoration(labelText: 'ID')),
                  TextField(
                      controller: titleController,
                      decoration: const InputDecoration(labelText: 'Title')),
                  TextField(
                      controller: descriptionController,
                      decoration:
                          const InputDecoration(labelText: 'Description')),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: imageController,
                          decoration:
                              const InputDecoration(labelText: 'Image Path'),
                          readOnly: true,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.image),
                        onPressed: () =>
                            _pickImage(imageController, index ?? _rows.length),
                      ),
                    ],
                  ),
                  TextField(
                      controller: dateController,
                      decoration: const InputDecoration(labelText: 'Date')),
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
                  'image': imageController.text,
                  'description': descriptionController.text,
                  'date': dateController.text,
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
            // Adding a new entry
            final newIndex = _rows.length;
            final newRow = AboutList(
              id: int.tryParse(result['id']) ?? newIndex + 1,
              title: result['title'] ?? '',
              description: result['description'] ?? '',
              image: result['image'] ?? '',
              date: DateTime.tryParse(result['date'] ?? '') ?? DateTime.now(),
            );
            _rows.add(newRow);
            if (_imageCache[newIndex] == null && result['image'] != null) {
              _imageCache[newIndex] = base64Decode(result['image']);
            }
          } else {
            // Editing an existing entry
            _rows[index]
              ..id = int.tryParse(result['id']) ?? _rows[index].id
              ..title = result['title'] ?? _rows[index].title
              ..image = result['image'] ?? _rows[index].image
              ..description = result['description'] ?? _rows[index].description
              ..date = DateTime.tryParse(result['date']) ?? _rows[index].date;
            if (result['image'] != null) {
              _imageCache[index] = base64Decode(result['image']);
            }
          }
          _saveServicesToSharedPref();
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
          content: const Text('Are you sure you want to delete this team?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Delete'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );

    if (confirm == true) {
      setState(() {
        _rows.removeAt(index);
        _imageCache.remove(index); // Clear cached image
        _saveServicesToSharedPref();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
            color: ColorsApp.MainColorbackgraund,
            child: Column(
              children: [
                CustomButton(
                  onPressed: () => openForm(),
                  text: 'Add Team',
                  colortxt: ColorsApp.MainColorbackgraund,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 20,
                      columns: const [
                        DataColumn(label: Text("ID"), numeric: true),
                        DataColumn(label: Text("Title")),
                        DataColumn(label: Text("Description")),
                        DataColumn(label: Text("Image")),
                        DataColumn(label: Text("Date")),
                        DataColumn(label: Text("Actions")),
                      ],
                      rows: _rows.asMap().entries.map((entry) {
                        final index = entry.key;
                        final row = entry.value;

                        return DataRow(cells: [
                          DataCell(Text(row.id.toString())), // Safe handling
                          DataCell(Text(row.title)),
                          DataCell(Text(row.description)),
                          DataCell(
                            _imageCache[index] != null
                                ? Image.memory(
                                    _imageCache[index]!,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  )
                                : const Text("No Image"),
                          ),
                          DataCell(Text(row.date.toString())),
                          DataCell(
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => openForm(index: index),
                                ),
                                const SizedBox(width: 8),
                                IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red),
                                  onPressed: () => _deleteRow(index),
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
            )));
  }
}
