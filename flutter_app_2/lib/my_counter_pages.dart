import 'package:flutter/material.dart';

class myCounterPages extends StatefulWidget {
  const myCounterPages({super.key});

  @override
  State<myCounterPages> createState() => _myCounterPagesState();
}

class _myCounterPagesState extends State<myCounterPages> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Counter Application AppBar")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The numbers of the click", style: TextStyle(fontSize: 24)),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterInc();
          debugPrint("Clicked");
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void counterInc() {
    setState(() {});
    _counter++;
  }
}