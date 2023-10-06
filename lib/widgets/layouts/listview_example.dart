import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  final _controller = ScrollController();
  List months = [
    "jan",
    "feb",
    "mar",
    "apr",
    "may",
    "jon",
    "july",
    "aug",
    "sep",
  ];
  List mm = [];

  @override
  Widget build(BuildContext context) {
    // mm.addAll(iterable)
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: Container(
          color: Colors.grey[300],
          child: ListView.custom(
              childrenDelegate:
                  SliverChildBuilderDelegate(childCount: 20, (context, index) {
            return Container(
              height: 100,
              color: Colors.teal,
              margin: EdgeInsets.symmetric(vertical: 20),
            );
          }))),
    );
  }

  sepratedListViewExample() {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: Text(
            "${months[index]}",
            style: TextStyle(fontSize: 20),
          ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.red,
            height: 20,
          );
        },
        itemCount: months.length);
  }

  //  ListView.custom(
  //               childrenDelegate: SliverChildBuilderDelegate((context, index) {
  //             return Container(
  //               height: 100,
  //               color: Colors.teal,
  //               margin: EdgeInsets.symmetric(vertical: 20),
  //             );
  //           }, childCount: months.length))
  builderListViewExample() {
    return ListView.builder(
        reverse: true,
        controller: _controller,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext con, int index) {
          context;
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            color: Colors.red,
            alignment: Alignment.center,
            height: 100,
            child: Text(
              "index $index",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          );
        });
  }

  // ListView.custom(
  //               childrenDelegate: SliverChildListDelegate([
  //             Container(
  //               height: 100,
  //               width: 100,
  //               color: Colors.red,
  //               margin: EdgeInsets.symmetric(vertical: 20),
  //             ),
  //             Container(
  //               height: 100,
  //               width: 100,
  //               color: Colors.red,
  //               margin: EdgeInsets.symmetric(vertical: 20),
  //             ),
  //             Container(
  //               height: 100,
  //               width: 100,
  //               color: Colors.red,
  //               margin: EdgeInsets.symmetric(vertical: 20),
  //             ),
  //             Container(
  //               height: 100,
  //               width: 100,
  //               color: Colors.red,
  //               margin: EdgeInsets.symmetric(vertical: 20),
  //             ),
  //             Container(
  //               height: 100,
  //               width: 100,
  //               color: Colors.red,
  //               margin: EdgeInsets.symmetric(vertical: 20),
  //             ),
  //             Container(
  //               height: 100,
  //               width: 100,
  //               color: Colors.red,
  //               margin: EdgeInsets.symmetric(vertical: 20),
  //             ),
  //             Container(
  //               height: 100,
  //               width: 100,
  //               color: Colors.red,
  //               margin: EdgeInsets.symmetric(vertical: 20),
  //             ),
  //             Container(
  //               height: 100,
  //               width: 100,
  //               color: Colors.red,
  //               margin: EdgeInsets.symmetric(vertical: 20),
  //             ),
  //           ]))
  normalListViewExample() {
    return ListView(
      controller: _controller,
      reverse: false,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          margin: EdgeInsets.all(30),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          color: Colors.red,
          child: Text(
            "item 1",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          color: Colors.red,
          child: Text(
            "item 2",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          color: Colors.red,
          child: Text(
            "item 3",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          color: Colors.red,
          child: Text(
            "item 4",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          color: Colors.red,
          child: Text(
            "item 5",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          color: Colors.red,
          child: Text(
            "item 6",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          color: Colors.red,
          child: Text(
            "item 7",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ],
    );
  }
}
