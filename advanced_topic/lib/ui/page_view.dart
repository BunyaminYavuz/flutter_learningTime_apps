import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool horizontalAxis = true;
  bool pageSnapping = true;
  bool reverseOrder = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection:
                horizontalAxis == true ? Axis.horizontal : Axis.vertical,
            reverse: reverseOrder,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint("Page change incoming index $index");
            },
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.indigo.shade200,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Page 0",
                        style: TextStyle(fontSize: 30),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          myController.jumpToPage(1);
                        },
                        child: Text("Go to Page 1"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          myController.jumpTo(100);
                        },
                        child: Text("See the 100px of the next page"),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.amberAccent,
                child: Center(
                  child: Text(
                    "Page 1",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.teal.shade200,
                child: Center(
                  child: Text(
                    "Page 2",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Run on the horizontal axis"),
                      Checkbox(
                        value: horizontalAxis,
                        onChanged: (value) {
                          setState(() {
                            horizontalAxis = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Page Snapping"),
                      Checkbox(
                        value: pageSnapping,
                        onChanged: (value) {
                          setState(() {
                            pageSnapping = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Reverse Order"),
                      Checkbox(
                        value: reverseOrder,
                        onChanged: (value) {
                          setState(() {
                            reverseOrder = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
