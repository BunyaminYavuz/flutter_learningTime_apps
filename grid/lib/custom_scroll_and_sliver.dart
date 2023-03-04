import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollapsebleToolBarExample extends StatelessWidget {
  const CollapsebleToolBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Custom Scroll App"),
            centerTitle: true,
            background: Image.network(
                "https://img.freepik.com/premium-photo/phone-mobile-application-development-concept-mobile-internet-3d-illustration_76964-5164.jpg",
                fit: BoxFit.cover),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(stableListElement()),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(_dynamicElementProducer,
                  childCount: 6)),
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildListDelegate(stableListElement()),
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              delegate: SliverChildBuilderDelegate(_dynamicElementProducer, childCount: 6),
        ),
        SliverGrid(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100), delegate: SliverChildBuilderDelegate(_dynamicElementProducer, childCount: 10))
      ],
    );
  }

  List<Widget> stableListElement() {
    return [
      Container(
        height: 100,
        color: Colors.amber,
        child: Text(
          "Stable List Element 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        color: Colors.teal,
        child: Text(
          "Stable List Element 2",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        color: Colors.blue,
        child: Text(
          "Stable List Element 3",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        color: Colors.orange,
        child: Text(
          "Stable List Element 4",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        color: Colors.purple,
        child: Text(
          "Stable List Element 5",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        color: Colors.cyan,
        child: Text(
          "Stable List Element 6",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
      ),
    ];
  }

  Widget? _dynamicElementProducer(BuildContext context, int index) {
    return Container(
      height: 100,
      color: randomColor(),
      child: Text(
        "Dynamic List Element ${index + 1}",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
      alignment: Alignment.center,
    );
  }

  Color randomColor() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }
}
