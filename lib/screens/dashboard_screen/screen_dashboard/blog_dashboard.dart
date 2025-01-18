import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';

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
      child: Container(
        color: ColorsApp.MainColorbackgraund,
        child: Column(
          children: [
            CustomButton(
              onPressed: () {},
              text: '"Add Row',
              colortxt: ColorsApp.MainColorbackgraund,
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
                            CustomButton(
                              text: 'Edit',
                              colortxt: ColorsApp.MainColorbackgraund,
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                            CustomButton(
                              text: 'Delete',
                              colortxt: ColorsApp.MainColorbackgraund,
                              onPressed: () {},
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
