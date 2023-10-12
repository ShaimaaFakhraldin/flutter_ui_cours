import 'package:flutter/material.dart';

class ScaleanimationExample extends StatefulWidget {
  const ScaleanimationExample({super.key});

  @override
  State<ScaleanimationExample> createState() => _ScaleanimationExampleState();
}

class _ScaleanimationExampleState extends State<ScaleanimationExample>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = CurvedAnimation(
        parent: animationController!, curve: Curves.bounceInOut);
    animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ScaleTransition(
        scale: animation!,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.ac_unit,
              size: 100,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
