import 'package:flutter/material.dart';

class FadTransactionExample extends StatefulWidget {
  const FadTransactionExample({super.key});

  @override
  State<FadTransactionExample> createState() => _FadTransactionExampleState();
}

class _FadTransactionExampleState extends State<FadTransactionExample>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = CurvedAnimation(
        parent: animationController!, curve: Curves.fastOutSlowIn);
    animationController!.repeat(reverse: true);
    animationController!.addListener(() {
      setState(() {});
    });
    animationController!.addStatusListener((status) {
      print("status $status");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadTransaction Example"),
      ),
      body: Center(
          child: FadeTransition(
        opacity: animation!,
        child: Column(
          children: [
            Text("my transaction"),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/pic01.png")
          ],
        ),
      )),
    );
  }
}
