import 'package:flutter/material.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    int elementNumber = ModalRoute.of(context)!.settings.arguments as int;
    List<Student> allStudents = List.generate(
        elementNumber,
        (index) =>
            Student(index + 1, "Student ${index + 1}", "Computer Engineering"));
    //print("Number of the students : ${elementNumber}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              var chosen = allStudents[index];
              Navigator.of(context)
                  .pushNamed("/studentDetails", arguments: chosen);
            },
            leading:
                CircleAvatar(child: Text(allStudents[index].id.toString())),
            title: Text(allStudents[index].name),
            subtitle: Text(allStudents[index].depertment),
          );
        },
        itemCount: elementNumber,
      ),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String depertment;

  Student(this.id, this.name, this.depertment);
}
