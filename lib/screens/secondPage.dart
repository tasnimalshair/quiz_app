import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: null,
      body: Padding(
          padding: EdgeInsets.only(top: 130, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Flutter...',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Flexible Control every pixel to create customized, adaptive designs that look and feel great on any screen.',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Productive Build and iterate quickly with Hot Reload. Update code and see changes almost instantly, without losing state.',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Now, let\'s start the quiz',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 80,
              ),
              Row(children: [
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/main_page');
                      },
                      child: Text(
                        'Start attempt',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                )
              ])
            ],
          )),
    );
  }
}
