import 'package:flutter/material.dart';
import 'custom_scroll_and_sliver.dart';
import 'gridview.dart';
import 'my_custom.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CollapsebleToolBarExample(),
      ),
    );
  }
}
