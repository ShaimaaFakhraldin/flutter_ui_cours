import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String data;
  const HomeScreen({super.key, required this.data});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to the HomeScreen"),
      ),
      body: Center(
        child: Text("my data is :  ${widget.data}"),
      ),
    );
  }
}
