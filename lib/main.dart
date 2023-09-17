import 'package:flutter/material.dart';
import 'package:flutter_ui_cours/state_full_example.dart';
import 'package:flutter_ui_cours/state_less_example.dart';

void main() {
 runApp(MaterialApp(
   home:   StatFullExample(),
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

