import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
        alignment: Alignment.center,
        child: const Text(
          "hi from HomepPage",
          style: TextStyle(fontSize: 20, color: Colors.teal),
        ),
      )
    )
    ;
  }
}
