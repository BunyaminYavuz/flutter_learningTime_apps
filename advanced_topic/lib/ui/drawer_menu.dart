import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Bunyamin Yavuz"),
              accountEmail: Text("1b.yavuz07@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Image.asset("assets/images/myProfilePhoto.png"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("A"),
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text("B"),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text("Call me"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.purple,
                    child: ListTile(
                      leading: Icon(Icons.account_box),
                      title: Text("Profile"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  AboutListTile(
                    applicationName: "My Drawer Menu",
                    applicationIcon: Icon(Icons.play_lesson),
                    applicationLegalese: null,
                    applicationVersion: "3.7",
                    child: Text("ABOUT ME"),
                    icon: Icon(Icons.keyboard),
                    aboutBoxChildren: [
                      Text("About Box Children (Child 1)"),
                      Text("About Box Children (Child 2)"),
                    ],
                    
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}