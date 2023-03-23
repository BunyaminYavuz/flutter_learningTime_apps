import 'package:flutter/material.dart';

class X extends StatelessWidget {
  X({super.key});
  final cKey = GlobalKey<CState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("X")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Basma Sayisi"),
            C(key: cKey),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cKey.currentState!.inc();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class C extends StatefulWidget {
  const C({super.key});

  @override
  State<C> createState() => CState();
}

class CState extends State<C> {
  int cnt = 0;
  void inc() {
    setState(() {
      cnt++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      cnt.toString(),
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
