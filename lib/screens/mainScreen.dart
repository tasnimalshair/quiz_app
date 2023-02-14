import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_mansour/screens/Quiz.dart';
import 'package:quiz_mansour/screens/answer.dart';
import 'package:quiz_mansour/screens/question.dart';
import 'package:quiz_mansour/screens/result.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

var w = Colors.white;
var b = Colors.black;

class _MainScreenState extends State<MainScreen> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final _question = [
    {
      'questionText':
          'A Stateful widget is a dynamic widget that can modify the appearance of its content in the response to the events invoked by the user\'s interactions or when it retrieves the data?',
      'answers': [
        {'text': 'True', 'score': 1},
        {'text': 'False', 'score': 0},
      ]
    },
    {
      'questionText':
          'How many child widgets can be added to Container Widget?',
      'answers': [
        {'text': 'Unlimited Children Widgets', 'score': 0},
        {'text': 'Only one Child Widget', 'score': 1},
        {'text': 'Two Children Widgets', 'score': 0},
        {'text': 'Three Children Widgets', 'score': 0}
      ]
    },
    {
      'questionText':
          ' Which of the following properties must we utilize for adding the label, inline, and icon suggestion text to the TextField widget?',
      'answers': [
        {'text': 'ListView', 'score': 0},
        {'text': 'InputDecoration', 'score': 1},
        {'text': 'SizeBox', 'score': 0},
        {'text': 'shrinkWrap:true', 'score': 0}
      ]
    },
    {
      'questionText':
          'You can import or add a new front to our Flutter by thrashing this front file in the font folder in our Flutter project without requiring to define this front folder or front file in the punspec.ymal',
      'answers': [
        {'text': 'True', 'score': 0},
        {'text': 'False', 'score': 1},
      ]
    },
    {
      'questionText':
          'This widget is utilized to wrap the Column, Container, Row, or other widgets. This widget inserts the filling size around the child widget.',
      'answers': [
        {'text': 'Image', 'score': 0},
        {'text': 'SnackBar', 'score': 0},
        {'text': 'Padding', 'score': 1},
        {'text': 'AlertDialog', 'score': 0}
      ]
    },
    {
      'questionText':
          ' In the Flutter development, we can insert three rows in a column and an image in every row.',
      'answers': [
        {'text': 'True', 'score': 1},
        {'text': 'False', 'score': 0},
      ]
    },
  ];

  bool isSwitched = false;

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        centerTitle: true,
        title: Text(
          'Quiz App',
          style: TextStyle(color: w, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                if (isSwitched == true) {
                  b = Colors.white;
                  w = Colors.black87;
                }
                if (isSwitched == false) {
                  w = Colors.white;
                  b = Colors.black;
                }
              });
            },
            activeColor: Colors.blue,
            activeTrackColor: Colors.white,
            inactiveThumbColor: Colors.black,
          )
        ],
      ),
      body: Container(
          alignment: Alignment.center,
          color: w,
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, answerQuestion)
              : Result(resetQuiz, _totalScore)),
    );
  }
}
