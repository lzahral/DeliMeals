import 'package:flutter/material.dart';

import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.pink[200],
            secondary: Colors.pink[50],
            tertiary: Colors.grey[900],
          ),
          primaryColor: Colors.pink,
          textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87))),
      // home: const CategoriesScreen(),
      routes: {
        '/': (ctx) => const CategoriesScreen(),
        CategoryMealsScreen.route: (ctx) => const CategoryMealsScreen(),
        MealDetailScreen.route: (ctx) => const MealDetailScreen()
      },
      // onGenerateRoute: (settings) {   //For when the route we want to go to is not in the list of routes
      //   print(settings);
      //   return null;
      // },
      // onUnknownRoute: (settings) {    //error 404
      //   return null;
      // },
    );
  }
}
