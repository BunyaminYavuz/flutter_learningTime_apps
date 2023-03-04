import 'package:flutter/material.dart';

class BasicButtons extends StatelessWidget {
  const BasicButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: () {}, child: Text("Press")),
        TextButton.icon(onPressed: () {}, icon: Icon(Icons.add), label: Text("Add a note")),
        ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
        Container(height: 100, width: 450, child: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.add_a_photo), label: Text("Add a photo"), style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade300, foregroundColor: Colors.blue.shade200),)),
      ],
    );
  }
}
