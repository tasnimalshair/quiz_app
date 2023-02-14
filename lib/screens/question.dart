import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_mansour/screens/mainScreen.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question,
        style: TextStyle(fontSize: 24, color: b, fontWeight: FontWeight.bold),
        textAlign: TextAlign.justify,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}
