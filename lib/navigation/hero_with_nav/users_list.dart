import 'package:flutter/material.dart';
import 'package:flutter_ui_cours/navigation/hero_with_nav/user_data.dart';
import 'package:flutter_ui_cours/navigation/hero_with_nav/user_detailes.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  List<UserData> users = [
    UserData(
        id: 0,
        image: "assets/images/users/1.jpeg",
        name: "Amani",
        title: "Flutter developer"),
    UserData(
        id: 1,
        image: "assets/images/users/2.jpeg",
        name: "Hani",
        title: "Flutter developer"),
    UserData(
        id: 2,
        image: "assets/images/users/3.jpeg",
        name: "Ali",
        title: "Flutter developer"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext con, int index) {
            return ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext con) {
                  return UserDetailes(
                    userData: users[index],
                  );
                }));
              },
              leading: Hero(
                  tag: users[index].id, child: Image.asset(users[index].image)),
              title: Text(users[index].name),
              subtitle: Text(users[index].title),
            );
          }),
    );
  }
}
