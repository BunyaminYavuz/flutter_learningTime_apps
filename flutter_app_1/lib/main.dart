import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 = 'https://images.app.goo.gl/1Rn3cmAgZGQNkiFN8';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("My App"), backgroundColor: Colors.blue),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: containerss,), Expanded(child: Column(children: containerss2))],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Clicked");
          },
          backgroundColor: Colors.yellow,
          child: Icon(
            Icons.thumb_up,
            color: Colors.blue,
          )),
    ));
  }

  Container mainContainerss() {
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                  flex: 2, child: Text("D", style: TextStyle(fontSize: 40))),
              Text("A", style: TextStyle(fontSize: 40)),
              Text("R", style: TextStyle(fontSize: 40)),
              Text("T", style: TextStyle(fontSize: 40)),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("L", style: TextStyle(fontSize: 40)),
              Text("E", style: TextStyle(fontSize: 40)),
              Text("C", style: TextStyle(fontSize: 40)),
              Text("T", style: TextStyle(fontSize: 40)),
              Text("U", style: TextStyle(fontSize: 40)),
              Text("R", style: TextStyle(fontSize: 40)),
              Text("E", style: TextStyle(fontSize: 40)),
            ],
          ),
        ],
      ),
    );
  }

  Widget containerLectures() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Text(
          "Bunyamin",
          style: TextStyle(fontSize: 50),
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          shape: BoxShape.rectangle,
          border: Border.all(width: 6, color: Colors.blue),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          ),
          image: DecorationImage(
            image: NetworkImage(_img1),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.yellow, offset: Offset(10, 10), blurRadius: 12),
            BoxShadow(
                color: Colors.blue, offset: Offset(-10, -10), blurRadius: 8),
          ],
        ),
      ),
    );
  }
}

List<Widget> get containerss {
  return [
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade100,alignment: Alignment.center, child: Text("D", style: TextStyle(fontSize: 80)))),
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade200,alignment: Alignment.center, child: Text("A", style: TextStyle(fontSize: 80)))),
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade300,alignment: Alignment.center, child: Text("R", style: TextStyle(fontSize: 80)))),
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade400,alignment: Alignment.center, child: Text("T", style: TextStyle(fontSize: 80)))),
  ];
}

List<Widget> get containerss2 {
  return [
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade100,alignment: Alignment.center, child: Text("L", style: TextStyle(fontSize: 80)))),
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade200,alignment: Alignment.center, child: Text("E", style: TextStyle(fontSize: 80)))),
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade300,alignment: Alignment.center, child: Text("C", style: TextStyle(fontSize: 80)))),
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade400,alignment: Alignment.center, child: Text("T", style: TextStyle(fontSize: 80)))),
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade500,alignment: Alignment.center, child: Text("U", style: TextStyle(fontSize: 80)))),
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade600,alignment: Alignment.center, child: Text("R", style: TextStyle(fontSize: 80)))),
    Flexible(child: Container(width: 80, height: 100, color: Colors.orange.shade700,alignment: Alignment.center, child: Text("E", style: TextStyle(fontSize: 80)))),
  ];
}
