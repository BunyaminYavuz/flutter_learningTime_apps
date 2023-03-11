import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/green_page.dart';
import 'package:flutter_navigations/red_page.dart';
import 'package:flutter_navigations/route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // *** Static Routes
      //home: HomePage(),
      /* routes: {
        "/redPage": (context) => RedPage(),
        "/": (context) => HomePage(),
        "/greenPage": (context) => GreenPage(),
      },
      onUnknownRoute: (setings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: Text("Error Page")),
          body: Center(child: Text("404 Page Not Found")),
        ),
      ), */

      // *** Dynamic Routes
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  int? _givenNumber = await Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => RedPage()));
                  print("Random number is : $_givenNumber");
                },
                //style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
                child: Text("Go to red page IOS")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push<int>(MaterialPageRoute(
                          builder: (redContext) => GreenPage()))
                      .then((int? value) =>
                          debugPrint("Random number is : $value"));
                },
                //style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
                child: Text("Go to red page Android")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).maybePop();
                },
                child: Text("Maybe Pop Button")),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/redPage");
              },
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
              child: Text("PushNamed Red Page"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/yellowPage");
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.yellow.shade300),
                child: Text("PushNamed Yellow Page")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/greenPage");
                },
                style: ElevatedButton.styleFrom(primary: Colors.green.shade300),
                child: Text("PushNamed Green Page")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/studentList", arguments: 10);
                },
                style:
                    ElevatedButton.styleFrom(primary: Colors.orange.shade300),
                child: Text("Create a list"))
          ],
        ),
      ),
    );
  }
}
