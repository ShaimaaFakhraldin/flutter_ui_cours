import 'package:flutter/material.dart';

class TabbedExample extends StatefulWidget {
  const TabbedExample({super.key});

  @override
  State<TabbedExample> createState() => _TabbedExampleState();
}

class _TabbedExampleState extends State<TabbedExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tabbed Example"),
            bottom: TabBar(
              // indicator: BoxDecoration(color: Colors.red),
              indicatorColor: Colors.black,
              indicatorWeight: 20,
              onTap: (int? index) {},
              tabs: [
                Tab(
                  icon: Icon(Icons.flight),
                  child: Text("shaimaa"),
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                ),
                Tab(
                  icon: Icon(Icons.directions_car),
                ),
              ],
            ),
          ),
          drawer: Drawer(),
          endDrawer: Drawer(),
          body: TabBarView(
            children: [
              Container(
                color: Colors.teal,
                child: const Center(
                  child: Icon(
                    Icons.flight,
                    size: 40,
                  ),
                ),
              ),
              Container(
                color: Colors.yellow,
                child: const Center(
                  child: Icon(
                    Icons.directions_transit,
                    size: 40,
                  ),
                ),
              ),
              Container(
                color: Colors.deepOrangeAccent,
                child: const Center(
                  child: Icon(
                    Icons.directions_car,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
