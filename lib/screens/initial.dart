import 'package:flutter/material.dart';

var w = Colors.white;
var b = Colors.black;

class Initial extends StatefulWidget {
  const Initial({Key? key}) : super(key: key);

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/second_page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Image.network(
        // 'https://www.ab9or.com/wp-content/uploads/2021/11/flutter-app-featured.webp',
        'https://applover.com/wp-content/uploads/2020/11/open-graph_1200x628_Flutter-development.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
