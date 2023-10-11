import 'package:flutter/material.dart';

class NestedScrollviewExample extends StatefulWidget {
  const NestedScrollviewExample({super.key});

  @override
  State<NestedScrollviewExample> createState() =>
      _NestedScrollviewExampleState();
}

class _NestedScrollviewExampleState extends State<NestedScrollviewExample> {
  @override
  Widget build(BuildContext context) {
    return nn();
  }

  nn() {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              title: Text("NestedScrollview example "),
              expandedHeight: 200,
              pinned: false,
              // forceElevated: innerBoxIsScrolled,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                color: Colors.green,
              ),
            )
          ];
        },
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("index: $index"),
              );
            }));
  }

  // reason  of use NestedScrollview
  old() {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text("NestedScrollview example "),
          expandedHeight: 200,
          pinned: true,
        ),
        SliverFillRemaining(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("index: $index"),
                );
              }),
        )
      ],
    );
  }
}
