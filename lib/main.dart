import './screens/category_meals_screen.dart';
import 'package:flutter/material.dart';
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
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.pink[200],
            secondary: const Color.fromARGB(255, 79, 255, 85),
            tertiary: Colors.grey[900],
          ),
          textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87))),
      // home: const CategoriesScreen(),
      routes: {
        '/': (ctx) => const CategoriesScreen(),
        CategoryMealsScreen.route: (ctx) => const CategoryMealsScreen()
      },
    );
  }
}
