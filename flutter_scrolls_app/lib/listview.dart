import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListviewUsageee extends StatelessWidget {
  ListviewUsageee({super.key});
  List<Student> allStudent = List.generate(
      50, (index) => Student(index + 1, "Student name ${index + 1}"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student List")),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          var current = allStudent[index];
          return Card(
            color: index % 2 == 0
                ? Colors.orange.shade100
                : Colors.purple.shade100,
            child: ListTile(
              onTap: () {
                if (index % 2 == 0) {
                  EasyLoading.instance.backgroundColor = Colors.red;
                } else {
                  EasyLoading.instance.backgroundColor = Colors.blue;
                }
                EasyLoading.showToast(
                  "${current.name}",
                  duration: Duration(seconds: 3),
                  toastPosition: EasyLoadingToastPosition.bottom,
                  dismissOnTap: true,
                );
              },
              onLongPress: () {
                _allertDialogProcess(context, current);
              },
              leading: CircleAvatar(
                child: Text(current.id.toString()),
              ),
              title: Text(
                current.name,
                style: TextStyle(fontSize: 24),
              ),
              subtitle:
                  Text(current.department, style: TextStyle(fontSize: 18)),
            ),
          );
        },
        itemCount: allStudent.length,
      ),
    );
  }

  ListView classicListview() {
    return ListView(
      children: [
        Column(
          children: allStudent
              .map(
                (Student temp) => ListTile(
                  leading: CircleAvatar(
                    child: Text(temp.id.toString()),
                  ),
                  title: Text(
                    temp.name,
                    style: TextStyle(fontSize: 24),
                  ),
                  subtitle:
                      Text(temp.department, style: TextStyle(fontSize: 18)),
                ),
              )
              .toList(),
        )
      ],
    );
  }

  _allertDialogProcess(BuildContext myContext, Student current) {
    showDialog(
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(current.toString()),
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                Text("Data Structures And Algorithms: " + Random().nextInt(100).toString()),
                Text("Programming Languages: " + Random().nextInt(100).toString()),
                Text("Web-Based Programming: " + Random().nextInt(100).toString()),
                Text("Logic Design System: " + Random().nextInt(100).toString()),
                Text("Differenial Equations: " + Random().nextInt(100).toString()),
                Text("Data Management And File Structure: " + Random().nextInt(100).toString()),
              ],
            )),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Close"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Okay"),
              ),
            ],
          );
        });
  }
}

class Student {
  final int id;
  final String name;
  final String department = "Computer Engineering";

  Student(this.id, this.name);

  @override
  String toString() {
    return "Name: $name, id: $id, department: $department";
  }
}
