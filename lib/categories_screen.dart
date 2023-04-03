import 'package:deli_meals_app/category_item.dart';

import './data/categories_data.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeals'),
      ),
      body: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.75,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: categoriesData
              .map((data) => CategoryItem(data.title, data.color))
              .toList()),
    );
  }
}
