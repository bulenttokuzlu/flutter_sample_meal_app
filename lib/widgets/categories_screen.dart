import 'package:flutter/material.dart';

import '../models/category.dart';
import '../data/category_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryScreen = GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.5,
      ),
      children: dummyCategories
          .map((cat) => CategoryItem(
                cat.title,
                cat.color,
              ))
          .toList(),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Tokuzlu Yemek')),
      body: categoryScreen,
    );
  }
}
