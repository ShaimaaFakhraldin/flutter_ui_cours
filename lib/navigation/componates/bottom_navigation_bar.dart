import 'package:flutter/material.dart';
import 'package:flutter_ui_cours/navigation/componates/cart_page.dart';

import 'home_page.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  List<Widget> screens = [const HomePage(), const CartPage()];
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Main Ui"),
        centerTitle: true,
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
        ],
      ),
    );
  }
}
