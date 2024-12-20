import 'package:flutter/material.dart';

import 'custom_header_table_item.dart';

class ListHeaderTables extends StatelessWidget {
  const ListHeaderTables({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomHeaderTableItem(title: 'Blog-id')),
        Expanded(flex: 2, child: CustomHeaderTableItem(title: 'Title-En')),
        Expanded(flex: 2, child: CustomHeaderTableItem(title: 'Title-AR')),
        Expanded(flex: 2, child: CustomHeaderTableItem(title: 'Descriptions')),
        Expanded(flex: 2, child: CustomHeaderTableItem(title: 'Actions')),
      ],
    );
  }
}
