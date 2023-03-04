import 'package:flutter/material.dart';

class DropdownButtonUsage extends StatefulWidget {
  const DropdownButtonUsage({super.key});

  @override
  State<DropdownButtonUsage> createState() => _DropdownButtonUsageState();
}

class _DropdownButtonUsageState extends State<DropdownButtonUsage> {
  String? _name = null;
  List<String> _allCities = ["Benyamin", "Benjamin", "Bunyamin"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Choose a name"),
        items: _allCities.map(
          (String name) => DropdownMenuItem(
            child: Text(name),
            value: name,
          ),
        ).toList(),
        value: _name,
        onChanged: (String? value) {
          setState(() {
          _name = value;
          });
        },
      ),
    );
  }
}
