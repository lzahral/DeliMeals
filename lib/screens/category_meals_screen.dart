import 'package:deli_meals_app/widgets/meal_item.dart';

import '../data/data.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({super.key});
  static const route = '/category-meals';
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryMeals = mealsData.where((meal) {
      return meal.categories.contains(args['id']);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(args['title'] as String),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                id: categoryMeals[index].id,
                title: categoryMeals[index].title,
                imageUrl: categoryMeals[index].imageUrl,
                affordability: categoryMeals[index].affordability,
                complexity: categoryMeals[index].complexity,
                duration: categoryMeals[index].duration);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
