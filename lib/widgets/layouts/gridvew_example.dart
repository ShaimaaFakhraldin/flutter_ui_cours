import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Example"),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.orange,
            );
          }),
    );
  }

  rx() {
    return GridView.custom(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 4, mainAxisSpacing: 4),
        childrenDelegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            color: Colors.blue,
            child: Text("index $index"),
          );
        }, childCount: 20));
  }

  Widget gridViewCustomListExample() {
    return GridView.custom(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        childrenDelegate: SliverChildListDelegate([
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.black,
          ),
        ]));
  }

  Widget gridViewBuilderExample() {
    return GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, mainAxisSpacing: 8, crossAxisSpacing: 40),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue,
            child: Text("index $index"),
          );
        });
  }

  Widget gridViewExtentExample() {
    return GridView.extent(
      maxCrossAxisExtent: 300,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      // childAspectRatio: 8 / 20,
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.teal,
        ),
        Container(
          color: Colors.grey,
        ),
        Container(
          color: Colors.blueAccent,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.teal,
        ),
        Container(
          color: Colors.grey,
        ),
        Container(
          color: Colors.blueAccent,
        ),
      ],
    );
  }

  Widget gridViewCountExample() {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 16 / 9,
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.teal,
        ),
        Container(
          color: Colors.grey,
        ),
        Container(
          color: Colors.blueAccent,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.teal,
        ),
        Container(
          color: Colors.grey,
        ),
        Container(
          color: Colors.blueAccent,
        ),
      ],
    );
  }

  Widget gridViewExample() {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 4 / 19,
          mainAxisExtent: 200),
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.teal,
        ),
        Container(
          color: Colors.grey,
        ),
        Container(
          color: Colors.blueAccent,
        ),
      ],
    );
  }
}
