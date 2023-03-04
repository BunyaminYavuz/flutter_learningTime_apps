import 'package:flutter/material.dart';

class PopupMenuButtonUsage extends StatefulWidget {
  const PopupMenuButtonUsage({super.key});

  @override
  State<PopupMenuButtonUsage> createState() => _PopupMenuButtonUsageState();
}

class _PopupMenuButtonUsageState extends State<PopupMenuButtonUsage> {
  String action = "My Profile";
  List<String> _popList = [
    "My Profile",
    "My Repository",
    "Pull Request",
    "Issues",
    "Log Out"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (value) {
          setState(() {
            action = value;
          });
        },
        itemBuilder: (BuildContext context) {
          return _popList
              .map((String option) => PopupMenuItem(
                    child: Text(option),
                    value: option,
                  ))
              .toList();
        },
      ),
    );
  }
}
