import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation>
    with SingleTickerProviderStateMixin {
  Animation? colorAnimation;
  Animation? sizeAnimation;
  AnimationController? animationController;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    colorAnimation = ColorTween(begin: Colors.red, end: Colors.orange)
        .animate(animationController!);
    // sizeAnimation =
    //     Tween<double>(begin: 100.0, end: 200.0).animate(animationController!);
    // super.initState();
    sizeAnimation = Tween<Size>(begin: Size(100, 100), end: Size(300, 300))
        .animate(animationController!);

    animationController!.repeat();
    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Animation"),
      ),
      body: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: sizeAnimation!.value),
        onPressed: () {},
        child: Text("Tween Animation"),
      )
          // Container(
          //   color: colorAnimation!.value,
          //   width: sizeAnimation!.value,
          //   height: sizeAnimation!.value,
          // ),
          ),
    );
  }
}
