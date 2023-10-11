import 'package:flutter/material.dart';

class AnimationContainerExample extends StatefulWidget {
  const AnimationContainerExample({super.key});

  @override
  State<AnimationContainerExample> createState() =>
      _AnimationContainerExampleState();
}

class _AnimationContainerExampleState extends State<AnimationContainerExample> {
  Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Container Example"),
      ),
      body: AnimatedContainer(
        width: double.infinity,
        duration: const Duration(seconds: 3),
        color: _color,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text("My  Container "),
            ElevatedButton(
                onPressed: () {
                  if (_color == Colors.orange) {
                    _color = Colors.red;
                  } else {
                    _color = Colors.orange;
                  }
                  setState(() {});
                },
                child: const Text("change color"))
          ],
        ),
      ),
    );
  }
}
