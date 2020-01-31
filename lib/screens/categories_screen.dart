import 'package:flutter/material.dart';

import '../dummy-data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(
              catData.id,
              catData.title,
              catData.color,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 3 / 2,
      ),
    );
  }
}
