import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Red Page App Bar"),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Red Page",
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
              onPressed: () {
                _randomNumber = Random().nextInt(100);
                print("Rand int : $_randomNumber");
                Navigator.of(context).pop(_randomNumber);
              },
              child: Text("Go back")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/greenPage");
              },
              child: Text("Go to Green Page")),
        ],
      )),
    );
  }
}
