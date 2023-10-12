import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          //             start     end
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (BuildContext context) {
          //   return LoginScreen();
          // }));
          /// second way  (2)
          Navigator.pushNamed(context, "login");
        },
        label: Text("go to login "),
      ),
      appBar: AppBar(
        title: Text("Signup  screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  ///                       Start    end
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (BuildContext con) {
                  //   return HomeScreen(
                  //     data: "yse i sened",
                  //   );
                  // }));

                  /// second way  (2)
                  Navigator.pushReplacementNamed(context, "home",
                      arguments: "yse i sened");
                },
                child: Text("go to home screen"))
          ],
        ),
      ),
    );
  }
}
