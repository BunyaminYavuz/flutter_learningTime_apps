import 'package:flutter/material.dart';

class GlobalKeyUsage extends StatelessWidget {
  GlobalKeyUsage({super.key});
  final counterWidgetKey = GlobalKey<CounterWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Key Usage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Number of button presses"),
            CounterWidget(
              key: counterWidgetKey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          counterWidgetKey.currentState!.increment();
        },
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => CounterWidgetState();
}

class CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      counter.toString(),
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
