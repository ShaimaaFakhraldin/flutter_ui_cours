import 'package:flutter/material.dart';
import 'package:flutter_ui_cours/navigation/home_screen.dart';
import 'package:flutter_ui_cours/navigation/login_screen.dart';
import 'package:flutter_ui_cours/widgets/layouts/stack_example.dart';

import 'navigation/forget_password_screen.dart';

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
  Map map = {"username": "", "password": "36726382"};
  runApp(MaterialApp(
      routes: {
        "login": (BuildContext context) {
          return LoginScreen();
        },
        // "home": (BuildContext context) {
        //   return HomeScreen();
        // },
        //  roote
        // "/": (BuildContext context) {
        //   return SignUpScreen();
        // },
        "forgetpassword": (BuildContext context) {
          return ForgetPasswordScreen();
        },
      },
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == "home") {
          String args = settings.arguments as String;
          return MaterialPageRoute(builder: (BuildContext context) {
            return HomeScreen(data: args);
          });
        }
      },

      // initialRoute: "/",
      home: StackExample()));
}
