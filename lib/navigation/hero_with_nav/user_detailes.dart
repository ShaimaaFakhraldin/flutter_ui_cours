import 'package:flutter/material.dart';
import 'package:flutter_ui_cours/navigation/hero_with_nav/user_data.dart';

class UserDetailes extends StatefulWidget {
  final UserData userData;
  const UserDetailes({super.key, required this.userData});

  @override
  State<UserDetailes> createState() => _UserDetailesState();
}

class _UserDetailesState extends State<UserDetailes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("detailes"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Hero(
                tag: widget.userData.id,
                child: Image.asset(
                  widget.userData.image,
                  width: 300,
                  height: 300,
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.userData.name,
              style: TextStyle(fontSize: 30, color: Colors.teal),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.userData.title,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
