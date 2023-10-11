import 'package:flutter/material.dart';

class AnimationOpacityExample extends StatefulWidget {
  const AnimationOpacityExample({super.key});

  @override
  State<AnimationOpacityExample> createState() =>
      _AnimationOpacityExampleState();
}

class _AnimationOpacityExampleState extends State<AnimationOpacityExample> {
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Opacity"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 3),
              child: Text(
                " Hide me",
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_opacity == 1) {
                    _opacity = 0;
                  } else {
                    _opacity = 1;
                  }
                  setState(() {});
                },
                child: Text("show animation opacity"))
          ],
        ),
      ),
    );
  }
}
