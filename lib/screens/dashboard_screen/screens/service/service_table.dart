import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/service/service_list.dart';

class ServiceTable extends StatelessWidget {
  final List<ServiceList> rows;
  final Function({int? index}) openForm;
  final Function(int index) deleteRow;

  const ServiceTable({
    required this.rows,
    required this.openForm,
    required this.deleteRow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            headingTextStyle: const TextStyle(color: Colors.white),
            headingRowColor: WidgetStateProperty.all(ColorsApp.TextColor),
            columns: const [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Name Ar")),
              DataColumn(label: Text("Price")),
              DataColumn(label: Text("Valid For")),
              DataColumn(label: Text("Is Best Value")),
              DataColumn(label: Text("Description")),
              DataColumn(label: Text("Description Ar")),
              DataColumn(label: Text("Actions")),
            ],
            rows: rows.asMap().entries.map((entry) {
              final index = entry.key;
              final row = entry.value;

              return DataRow(cells: [
                DataCell(SizedBox(width: 70, child: Text(row.name))),
                DataCell(SizedBox(width: 70, child: Text(row.nameAr))),
                DataCell(
                    SizedBox(width: 50, child: Text(row.price.toString()))),
                DataCell(SizedBox(width: 70, child: Text(row.validFor))),
                DataCell(SizedBox(
                    width: 50, child: Text(row.isBestValue.toString()))),
                DataCell(SizedBox(
                  width: 120,
                  child: Text(
                    row.description.toString(),
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 9)),
                  ),
                )),
                DataCell(SizedBox(
                  width: 120,
                  child: Text(
                    row.descriptionAr.toString(),
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 9)),
                  ),
                )),
                DataCell(
                  SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomButton(
                          onPressed: () => openForm(index: index),
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
                ),
              ]);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
