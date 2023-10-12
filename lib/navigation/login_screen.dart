import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (BuildContext context) {
          //   return ForgetPasswordScreen();
          // }));
          /// second way  (2)
          Navigator.pushReplacementNamed(context, "forgetpassword");
        },
        label: Text("forget password"),
      ),
      appBar: AppBar(
        // leading: InkWell(

        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //     child: Container(alignment: Alignment.center, child: Text("back"))),
        title: Text("Login screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushAndRemoveUntil(context,
                  //     MaterialPageRoute(builder: (BuildContext context) {
                  //   return HomeScreen();
                  // }), (Route<dynamic> route) => false);
                  /// second way  (2)
                  Navigator.pushNamedAndRemoveUntil(
                      context, "home", (route) => false);
                },
                child: Text("go to home screen"))
          ],
        ),
      ),
    );
  }
}
