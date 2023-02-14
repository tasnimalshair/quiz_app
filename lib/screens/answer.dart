import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() x;
  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 30, right: 20, left: 20),
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue[300],
            ),
            onPressed: x,
            child: Text(
              answerText,
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
      ),
    );
  }
}
