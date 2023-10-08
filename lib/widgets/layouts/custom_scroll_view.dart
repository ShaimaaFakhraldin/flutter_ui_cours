import 'package:flutter/material.dart';

//  when i need linked items and scrolled
class CustomScrollViewExample extends StatefulWidget {
  const CustomScrollViewExample({super.key});

  @override
  State<CustomScrollViewExample> createState() =>
      _CustomScrollViewExampleState();
}

class _CustomScrollViewExampleState extends State<CustomScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CustomScrollView Example"),
          centerTitle: true,
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              backgroundColor: Colors.brown,
              title: Text("from inside "),
              expandedHeight: 100,
              centerTitle: true,
              flexibleSpace: Container(
                  // color: Colors.yellow,
                  ),
            ),
            SliverToBoxAdapter(
              child: Container(),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(childCount: 20,
                    (BuildContext context, int index) {
              return Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                color: Colors.green,
              );
            })),
            SliverGrid(
                delegate: SliverChildListDelegate([
                  Container(
                    height: 50,
                    color: Colors.teal,
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    color: Colors.teal,
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    color: Colors.teal,
                    width: 50,
                  ),
                ]),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4)),
            SliverFillRemaining(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 70,
                        alignment: Alignment.center,
                        color: Colors.red,
                        child: Text(
                          "index: $index",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }))
          ],
        ));
  }

  //  reson of uesd customScroll
  old() {
    return Column(
      children: [
        Container(
          color: Colors.green,
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 70,
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Text(
                    "index: $index",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 70,
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: Text(
                      "index: $index",
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                }))
      ],
    );
  }
}
