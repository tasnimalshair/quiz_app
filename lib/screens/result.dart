import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz_mansour/screens/mainScreen.dart';

class Result extends StatelessWidget {
  final Function() x;
  final int total;

  Result(this.x, this.total);
  String get phrase {
    String phr;
    if (total >= 5)
      phr = 'You\'re awesome!';
    else if (total >= 3)
      phr = 'Pretty likable!';
    else
      phr = 'So bad';

    return phr;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$total',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.pink)),
              Text(
                ' / 6',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: b),
              )
            ],
          ),
          Text(phrase,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 35, color: b)),
          SizedBox(height: 20),
          TextButton(
              onPressed: x,
              child: Text('Restart the quiz',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        ],
      ),
    );
  }
}
