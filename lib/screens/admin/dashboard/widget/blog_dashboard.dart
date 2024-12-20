import 'package:flutter/material.dart';

class BlogDashboard extends StatefulWidget {
  const BlogDashboard({super.key});

  @override
  State<BlogDashboard> createState() => _BlogDashboardState();
}

final List<Map<String, String>> _rows = [];

class _BlogDashboardState extends State<BlogDashboard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {}, //=> _openForm(),
              child: const Text("Add Row"),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  sortColumnIndex: 0,
                  sortAscending: true,
                  dividerThickness: 2,
                  showBottomBorder: true,
                  columnSpacing: 100,
                  columns: const [
                    DataColumn(label: Text("id"), numeric: true),
                    DataColumn(label: Text("imageUrl")),
                    DataColumn(label: Text("title")),
                    DataColumn(label: Text("titleAr")),
                    DataColumn(label: Text("description")),
                    DataColumn(label: Text("subDescription")),
                    DataColumn(label: Text("name")),
                    DataColumn(label: Text("date")),
                  ],
                  rows: _rows.asMap().entries.map((entry) {
                    final index = entry.key;
                    final row = entry.value;

                    return DataRow(cells: [
                      DataCell(Text(row['id']!)),
                      DataCell(Text(row['imageUrl']!)),
                      DataCell(Text(row['title']!)),
                      DataCell(Text(row['titleAr']!)),
                      DataCell(Text(row['description']!)),
                      DataCell(Text(row['subDescription']!)),
                      DataCell(Text(row['name']!)),
                      DataCell(Text(row['date']!)),
                      DataCell(
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () {}, // => _openForm(index: index),
                              child: const Text('Edit'),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: () {}, //=> _deleteRow(index),
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
