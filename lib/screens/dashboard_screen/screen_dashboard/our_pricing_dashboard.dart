import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';

class OurPricingDashboard extends StatefulWidget {
  const OurPricingDashboard({super.key});

  @override
  State<OurPricingDashboard> createState() => _OurPricingDashboardState();
}

final List<Map<String, String>> _rows = [];

class _OurPricingDashboardState extends State<OurPricingDashboard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: ColorsApp.OUTLINECOLOR,
        child: Column(
          children: [
            CustomButton(
              onPressed: () {},
              text: 'Edit',
              colortxt: ColorsApp.MainColorbackgraund,
            ),
            CustomButton(
              onPressed: () {},
              text: 'Add Row',
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
                    DataColumn(label: Text("title")),
                    DataColumn(label: Text("titleAr")),
                    DataColumn(label: Text("description")),
                  ],
                  rows: _rows.asMap().entries.map((entry) {
                    final index = entry.key;
                    final row = entry.value;

                    return DataRow(cells: [
                      DataCell(Text(row['id']!)),
                      DataCell(Text(row['title']!)),
                      DataCell(Text(row['titleAr']!)),
                      DataCell(Text(row['description']!)),
                      DataCell(
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomButton(
                              onPressed: () {},
                              text: 'Edit',
                              colortxt: ColorsApp.MainColorbackgraund,
                            ),
                            const SizedBox(width: 8),
                            CustomButton(
                              onPressed: () {},
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
      ),
    );
  }
}
