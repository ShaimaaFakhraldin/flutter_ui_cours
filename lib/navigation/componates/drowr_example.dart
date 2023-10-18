import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'home_page.dart';

class DrowrExample extends StatefulWidget {
  const DrowrExample({super.key});

  @override
  State<DrowrExample> createState() => _DrowrExampleState();
}

class _DrowrExampleState extends State<DrowrExample> {
  List<Widget> screens = [const HomePage(), const CartPage()];
  int currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("main screen"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/users/3.jpeg"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/users/3.jpeg"),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/users/3.jpeg"),
                  ),
                ],
                accountName: Text("shaimaaa"),
                accountEmail: Text("shaimaa@google.com")),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return HomePage();
                }));
              },
              leading: Icon(Icons.folder),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("cart"),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("star"),
            ),
          ],
        ),
      ),
      body: screens[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentScreen,
          onTap: (int index) {
            setState(() {
              currentScreen = index;
            });
          },
          items: [
            BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: "cart",
              icon: Icon(Icons.shopping_basket_outlined),
            ),
          ]),
    );
  }
}
