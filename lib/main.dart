import 'package:flutter/material.dart';

import 'animation/scale_animation_example.dart';

// online
// offline
// in app

void main() {
  // runApp(CupertinoApp(
  //   localizationsDelegates: [
  //     DefaultMaterialLocalizations.delegate,
  //     DefaultCupertinoLocalizations.delegate,
  //     DefaultWidgetsLocalizations.delegate,
  //   ],
  //   home: Scaffold(
  //     body: NestedScrollviewExample(),
  //   ),
  // ));
  runApp(MaterialApp(
      home: Scaffold(
    body: ScaleanimationExample(),
  )));
}
