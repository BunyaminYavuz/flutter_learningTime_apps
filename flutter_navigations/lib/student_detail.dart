import 'package:flutter/material.dart';
import 'package:flutter_navigations/student_list.dart';

class StudentDetails extends StatelessWidget {
  final Student chosenStudent;
  const StudentDetails({required this.chosenStudent, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Details")),
      body: Center(
        child: Column(children: [
          Text(chosenStudent.id.toString()),
          Text(chosenStudent.name),
          Text(chosenStudent.depertment),
        ],),
      ),
    );
  }
}
