import 'dart:math';

import 'package:flutter/material.dart';

class CardAndListTile extends StatefulWidget {
  const CardAndListTile({super.key});

  @override
  State<CardAndListTile> createState() => _CardAndListTileState();
}

class _CardAndListTileState extends State<CardAndListTile> {
  List<Student> allStudent = List.generate(
      50, (index) => Student(index + 1, "Student name ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card")),
      body: Center(child: classicListview()),
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

  SingleChildScrollView singleChildScroll() {
    return SingleChildScrollView(
      child: Column(
        children: [
          newCard(),
          newDivider(),
          newCard(),
          newDivider(),
          newCard(),
          newDivider(),
          newCard(),
          newDivider(),
          newCard(),
          newDivider(),
          newCard(),
          newDivider(),
          newCard(),
          newDivider(),
          newCard(),
          newDivider(),
          newCard(),
        ],
      ),
    );
  }

  Divider newDivider() => Divider(
        color: Colors.black,
        height: 20,
        thickness: 2,
        indent: 100,
        endIndent: 100,
      );

  Column newCard() {
    return Column(
      children: [
        Card(
          color: Colors.purple,
          shadowColor: Colors.purple.shade500,
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: Icon(Icons.add),
            title: Text("Title"),
            subtitle: Text("Subtitle"),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
      ],
    );
  }
}

class Student {
  final int id;
  final String name;
  late String department = "Computer Engineering";

  Student(this.id, this.name);
}
