import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Yellow Page App Bar"), backgroundColor: Colors.yellow,),
      body: Center(child: Text("Yellow Page", style: TextStyle(fontSize: 24),)),
    );
  }
}