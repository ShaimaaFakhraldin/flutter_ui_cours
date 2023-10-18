import 'package:flutter/material.dart';

import 'items_data.dart';

class MyUi extends StatefulWidget {
  const MyUi({super.key});

  @override
  State<MyUi> createState() => _MyUiState();
}

class _MyUiState extends State<MyUi> {
  List<ItemsData> myData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myData.add(ItemsData(
        image: 'assets/google.png',
        title: "Pullover",
        description: "Mango",
        rate: 4,
        price: 51));
    myData.add(ItemsData(
        image: 'assets/google.png',
        title: "Pullover",
        description: "Mango",
        rate: 4,
        price: 51));
    myData.add(ItemsData(
        image: 'assets/google.png',
        title: "Pullover",
        description: "Mango",
        rate: 4,
        price: 51));
    myData.add(ItemsData(
        image: 'assets/google.png',
        title: "Pullover",
        description: "Mango",
        rate: 4,
        price: 51));
    myData.add(ItemsData(
        image: 'assets/google.png',
        title: "Pullover",
        description: "Mango",
        rate: 4,
        price: 51));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: myData.length,
          itemBuilder: (BuildContext context, int index) {
            return Text("");
          }),
    );
  }
}
