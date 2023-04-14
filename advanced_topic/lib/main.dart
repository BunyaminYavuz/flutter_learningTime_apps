import 'package:advanced2/ui/custom_font_usage.dart';
import 'package:advanced2/ui/drawer_menu.dart';
import 'package:advanced2/ui/home_page.dart';
import 'package:advanced2/ui/page_view.dart';
import 'package:advanced2/ui/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "General",
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedMenuItem = 0;
  List<Widget> allPages = [];
  late HomePage pageHome;
  late SearchPage pageSearch;
  late PageViewExample pagePageView;

  var keyHomePage = PageStorageKey("key_home_page");
  var keySearchPage = PageStorageKey("key_search_page");

  @override
  void initState() {
    pageHome = HomePage(key: keyHomePage);
    pageSearch = SearchPage(key: keySearchPage);
    pagePageView = PageViewExample();

    allPages = [
      pageHome,
      pageSearch,
      pagePageView,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Advanced Topics"),
      ),
      body: selectedMenuItem <= allPages.length - 1
          ? allPages[selectedMenuItem]
          : allPages[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  BottomNavigationBar bottomNavMenu() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.purple),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.amber),
        BottomNavigationBarItem(
            icon: Icon(Icons.add), label: "Add", backgroundColor: Colors.red),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
            backgroundColor: Colors.green),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: selectedMenuItem,
      onTap: (index) {
        setState(() {
          selectedMenuItem = index;
        });
      },
    );
  }
}
