import 'package:advanced2/models/data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Data> allDatas = [];

  @override
  void initState() {
    super.initState();
    allDatas = [
      Data("Whoami?", false, "Computer Engineer"),
      Data("My Projects", false, "Go to My Portfolio Website"),
      Data("Contact Me", false, "Github, LinkedIn, Instagram, Twitter, My Website"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ExpansionTile(
        key: PageStorageKey("$index"),
        title: Text(allDatas[index].title),
        initiallyExpanded: allDatas[index].expanded,
        children: [
          Container(
            child: Center(child: Text(allDatas[index].content)),
            color: index % 2 == 0 ? Colors.grey.shade200 : Colors.red.shade200,
            height: 200,
            width: double.infinity,
          ),
        ],
      );
    },itemCount: allDatas.length);
  }
}
