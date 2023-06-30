import 'package:flutter/material.dart';
import 'package:quiz_multiple_choice/pages/home.dart';
import 'package:quiz_multiple_choice/pages/level_one_description.dart';
import 'package:quiz_multiple_choice/pages/level_two_description.dart';
import 'package:quiz_multiple_choice/pages/multiple_choice_page.dart';
import 'package:quiz_multiple_choice/pages/true_false_q.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/level_one_description': (context) => const LevelOneDescription(),
        '/level_two_description': (context) => const LevelTwoDescription(),
        '/multiple_choice_page': (context) => const MultipleChoicePage(),
        '/true_false_q': (context) => const TrueFalseQ(),
      },
    );
  }
}
