import 'package:flutter/material.dart';
import 'package:flutter_application_2/button.dart';
import 'package:flutter_application_2/drop_down_button.dart';
import 'package:flutter_application_2/image_widgets.dart';
import 'package:flutter_application_2/my_counter_pages.dart';
import 'package:flutter_application_2/popup_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application Name",
      theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: TextTheme(
            headline1:
                TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Basic Buttons"),
          actions: [PopupMenuButtonUsage()],
        ),
        body: DropdownButtonUsage(),
      ),
    );
  }
}
