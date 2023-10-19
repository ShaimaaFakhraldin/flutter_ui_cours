import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("StackExample"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                color: Colors.brown,
                constraints: BoxConstraints.expand(height: 260),
                child: Stack(
                  textDirection: TextDirection.ltr,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.teal,
                    ),
                    Positioned(
                        left: 20,
                        top: 20,
                        right: 20,
                        bottom: 20,
                        child: Container(
                          width: 10,
                          height: 10,
                          color: Colors.green,
                          child: Text(
                            "Container  options",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    Text(
                      "Flutter  options",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    Positioned(
                        bottom: 10,
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.orange,
                        )),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.blue,
              constraints: BoxConstraints.expand(height: 200),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      top: 20,
                      bottom: -20,
                      child: Container(
                        color: Colors.purple,
                        child: Text("clipBehavior"),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.blue,
              constraints: BoxConstraints.expand(height: 200),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Positioned(
                      top: 20,
                      bottom: 20,
                      child: Container(
                        color: Colors.purple,
                        child: Text("Stack --alignment"),
                      )),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Text("Alignment"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.teal.withOpacity(.5),
              constraints: BoxConstraints.expand(height: 50),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    color: Colors.purple,
                    child: Text("loose"),
                  ),
                  Positioned(child: Text("sdsjdhsdjsdhshj"))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.teal.withOpacity(.5),
              constraints: BoxConstraints.expand(height: 50),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.purple,
                    child: Text("expand"),
                  ),
                  // Container(
                  //   color: Colors.deepOrange,
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.teal.withOpacity(.5),
              constraints: BoxConstraints.expand(height: 60),
              child: Stack(
                fit: StackFit.passthrough,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 50,
                    height: 40,
                    color: Colors.green,
                    child: Text("StackFit.passthrough"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )));
  }
}
