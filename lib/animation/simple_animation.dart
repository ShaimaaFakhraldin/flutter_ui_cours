import 'package:flutter/material.dart';

class SimpleAnimation extends StatefulWidget {
  const SimpleAnimation({super.key});

  @override
  State<SimpleAnimation> createState() => _SimpleAnimationState();
}

class _SimpleAnimationState extends State<SimpleAnimation>
    with SingleTickerProviderStateMixin {
  List mm = [];
  AnimationController? animationController;
  Animation? myAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    // myAnimation =
    //     CurvedAnimation(parent: animationController!, curve: Curves.easeIn);
    myAnimation = Tween<double>(begin: 100.0, end: 400.0).animate(
        CurvedAnimation(parent: animationController!, curve: Curves.easeIn));
    super.initState();
    animationController!.repeat();
    myAnimation!.addListener(() {
      setState(() {});
    });
    myAnimation!.addStatusListener((status) {
      print("status : $status");
    });
  }

  void setMyData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          animationController!.forward();
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        color: Colors.red,
        margin: EdgeInsets.only(top: myAnimation!.value),
        height: 200,
        width: 200,
      ),
    );
  }
}
