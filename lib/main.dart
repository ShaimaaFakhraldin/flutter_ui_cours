import 'package:flutter/material.dart';
import 'package:flutter_ui_cours/widgets/images_example.dart';
// online
// offline
// in app

///  change
void main() {
  runApp(MaterialApp(
    home: ImageExample(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
