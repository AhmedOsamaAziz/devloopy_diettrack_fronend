import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/model/testimonials/testimonial_list.dart';

class TestimonialTable extends StatelessWidget {
  final List<TestimonialList> rows;
  final Function(int index) editTestimonial;
  final Function(int index) deleteRow;

  const TestimonialTable({
    required this.rows,
    required this.editTestimonial,
    required this.deleteRow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        headingTextStyle: const TextStyle(color: Colors.white),
        headingRowColor: WidgetStateProperty.all(ColorsApp.TextColor),
        columns: const [
          DataColumn(label: Text("Id")),
          DataColumn(label: Text("Title")),
          DataColumn(label: Text("Description")),
          DataColumn(label: Text("Video URL")),
          DataColumn(label: Text("Actions")),
        ],
        rows: rows.asMap().entries.map((entry) {
          final index = entry.key;
          final row = entry.value;

          return DataRow(cells: [
            DataCell(SizedBox(width: 40, child: Text(row.id.toString()))),
            DataCell(SizedBox(width: 70, child: Text(row.title))),
            DataCell(SizedBox(width: 150, child: Text(row.description))),
            DataCell(SizedBox(width: 350, child: Text(row.videoUrl))),
            DataCell(
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomButton(
                    onPressed: () => editTestimonial(index),
                    text: 'Edit',
                    colortxt: ColorsApp.MainColorbackgraund,
                  ),
                  const SizedBox(width: 8),
                  CustomButton(
                    onPressed: () => deleteRow(index),
                    text: 'Delete',
                    colortxt: ColorsApp.MainColorbackgraund,
                  ),
                ],
              ),
            ),
          ]);
        }).toList(),
      ),
    );
  }
}
