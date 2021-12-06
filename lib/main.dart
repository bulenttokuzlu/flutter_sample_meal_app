import 'package:flutter/material.dart';

import './widgets/categories_screen.dart';
import './themes/theme_meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tokuzlu Yemek',
        theme: ThemeMeal().theme,
        home: const CategoriesScreen());
  }
}
