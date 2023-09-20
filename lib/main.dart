import 'package:flutter/material.dart';
import 'package:flutter_ui_cours/state_full_example.dart';
import 'package:flutter_ui_cours/state_less_example.dart';
import 'package:flutter_ui_cours/widgets/container_example.dart';
import 'package:flutter_ui_cours/widgets/text_example_class.dart';
// online
// offline
// in app

///  change
void main() {
 runApp(MaterialApp(
   home:   ContainerExample(),
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
