import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_mansour/screens/Quiz.dart';
import 'package:quiz_mansour/screens/answer.dart';
import 'package:quiz_mansour/screens/initial.dart';
import 'package:quiz_mansour/screens/mainScreen.dart';
import 'package:quiz_mansour/screens/question.dart';
import 'package:quiz_mansour/screens/result.dart';
import 'package:quiz_mansour/screens/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/initial_page',
      routes: {
        '/initial_page': (context) => Initial(),
        '/second_page': (context) => SecondPage(),
        '/main_page': (context) => MainScreen(),
      },
    );
  }
}
