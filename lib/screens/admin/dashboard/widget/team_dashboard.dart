import 'dart:typed_data'; // Add this import for Uint8List
import 'package:flutter/foundation.dart'; // For kIsWeb
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/model/team/team_list.dart';

class TeamDashBoard extends StatefulWidget {
  const TeamDashBoard({super.key});

  @override
  _ServiceDashBoardState createState() => _ServiceDashBoardState();
}

class _ServiceDashBoardState extends State<TeamDashBoard> {
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
  final List<TeamList> _rows = [];
  final ImagePicker _picker = ImagePicker();
  final Map<int, Uint8List?> _imageCache = {}; // Cache for images

  @override
  void initState() {
    super.initState();
    _loadServicesFromSharedPref();
  }

  Future<void> _loadServicesFromSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final String? teamJson = prefs.getString('Team');
    if (teamJson != null) {
      final List<dynamic> teamList = jsonDecode(teamJson);
      setState(() {
        _rows.clear();
        _imageCache.clear();
        for (var teamMap in teamList) {
          _rows.add(TeamList.fromJson(teamMap));
          // Decode the base64 image string back into bytes
          if (teamMap['image'] != null) {
            _imageCache[_rows.length - 1] = base64Decode(teamMap['image']);
          }
        }
      });
    }
  }

  Future<void> _saveServicesToSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    List<Map<String, dynamic>> serviceList = [];

    for (var i = 0; i < _rows.length; i++) {
      var team = _rows[i];
      String? base64Image;
      if (_imageCache[i] != null) {
        base64Image = base64Encode(_imageCache[i]!);
      }
      serviceList.add({
        'id': team.id,
        'name': team.name,
        'image': base64Image, // Store as base64 string
        'position': team.position,
      });
    }

    prefs.setString('Team', jsonEncode(serviceList));
  }

  Future<void> _pickImage(
      TextEditingController imageController, int index) async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      // Cache the image as bytes
      final bytes = await pickedFile.readAsBytes();
      setState(() {
        imageController.text = pickedFile.path;
        _imageCache[index] = bytes;
      });
    }
  }

  void openForm({int? index}) async {
    final idController = TextEditingController();
    final nameController = TextEditingController();
    final imageController = TextEditingController();
    final postionController = TextEditingController();

    if (index != null) {
      final row = _rows[index];
      idController.text = row.id;
      nameController.text = row.name;
      imageController.text = row.image;
      postionController.text = row.position;
    }

    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(index == null ? 'Add New Team' : 'Edit Team'),
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
                      controller: nameController,
                      decoration: const InputDecoration(labelText: 'Name')),
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
                        onPressed: () => _pickImage(imageController,
                            index ?? _rows.length), // Trigger image picker
                      ),
                    ],
                  ),
                  TextField(
                      controller: postionController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: 'Position')),
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
                  'name': nameController.text,
                  'image': imageController.text,
                  'position': postionController.text,
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
            _rows.add(TeamList(
              id: result['id']!,
              name: result['name']!,
              image: result['image']!,
              position: result['position']!,
            ));
          } else {
            _rows[index]
              ..id = result['id']!
              ..name = result['name']!
              ..image = result['image']!
              ..position = result['position']!;
          }
          _saveServicesToSharedPref(); // Save to shared preferences
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
      child: SizedBox(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => openForm(),
              child: const Text("Add Team"),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 20,
                  columns: const [
                    DataColumn(label: Text("ID"), numeric: true),
                    DataColumn(label: Text("Name")),
                    DataColumn(label: Text("Image")),
                    DataColumn(label: Text("Position")),
                    DataColumn(label: Text("Actions")),
                  ],
                  rows: _rows.asMap().entries.map((entry) {
                    final index = entry.key;
                    final row = entry.value;

                    return DataRow(cells: [
                      DataCell(Text(row.id)),
                      DataCell(Text(row.name)),
                      DataCell(
                        _imageCache[index] != null
                            ? Image.memory(
                                _imageCache[index]!, // Use cached image bytes
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              )
                            : const Text("No Image"),
                      ),
                      DataCell(Text(row.position)),
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
                              icon: const Icon(Icons.delete, color: Colors.red),
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
        ),
      ),
    );
  }
}
