import 'package:flutter/material.dart';

class ColumnExample extends StatefulWidget {
  const ColumnExample({super.key});

  @override
  State<ColumnExample> createState() => _ColumnExampleState();
}

class _ColumnExampleState extends State<ColumnExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column example"),
      ),
      body: Container(
        color: Colors.grey[300],
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 50,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 50,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
