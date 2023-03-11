import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/green_page.dart';
import 'package:flutter_navigations/main.dart';
import 'package:flutter_navigations/red_page.dart';
import 'package:flutter_navigations/student_detail.dart';
import 'package:flutter_navigations/student_list.dart';
import 'package:flutter_navigations/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _routeCreate(
      Widget targetWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          settings: settings, builder: ((context) => targetWidget));
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          settings: settings, builder: ((context) => targetWidget));
    } else
      return CupertinoPageRoute(
          settings: settings, builder: ((context) => targetWidget));
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _routeCreate(HomePage(), settings);
      case "/redPage":
        return _routeCreate(RedPage(), settings);
      case "/yellowPage":
        return _routeCreate(YellowPage(), settings);
      case "/greenPage":
        return _routeCreate(GreenPage(), settings);
      case "/studentList":
        return _routeCreate(StudentList(), settings);
      case "/studentDetails":
        var parameterStudent = settings.arguments as Student;
        return _routeCreate(StudentDetails(chosenStudent: parameterStudent), settings);
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: Text("Error Page")),
            body: Center(child: Text("404 Page Not Found")),
          ),
        );
    }
  }
}
