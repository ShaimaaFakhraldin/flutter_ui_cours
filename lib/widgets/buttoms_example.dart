import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExampleButtons extends StatefulWidget {
  const ExampleButtons({super.key});

  @override
  State<ExampleButtons> createState() => _ExampleButtonsState();
}

class _ExampleButtonsState extends State<ExampleButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Buttons Examples "),
        ),
        body: Column(
          children: [
            // ElevatedButton
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyan),
                    foregroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.yellow)),
                onPressed: () {
                  print("ElevatedButton onPressed ");
                },
                onLongPress: () {
                  print("ElevatedButton onLongPress ");
                },
                child: Text("login")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.blue,
                    elevation: 20,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.yellow,
                    minimumSize: Size(300, 50),
                    maximumSize: Size(400, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  // code
                  print("hi____ ");
                },
                child: Text(
                  "my Buttin jhsjhsjjhsjhmnsmmnnmkkjjkkjkjkdkjksslkskl",
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              height: 20,
            ),
            // Outline button
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red, width: 2),
                    // backgroundColor: Colors.blue,
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  print("OutlinedButton onPressed ");
                },
                child: Text("my Outline button")),
            SizedBox(
              height: 20,
            ),
            // Text button
            TextButton(
                style: TextButton.styleFrom(
                    // shape: RoundedRectangleBorder(
                    //     side: BorderSide(color: Colors.red, width: 2)),
                    foregroundColor: Colors.blue),
                onPressed: () {},
                child: Text("Already have an account?")),
            SizedBox(
              height: 20,
            ),
            // IconButton
            IconButton(
                onPressed: () {
                  print("IconButton onPressed");
                },
                iconSize: 50,
                icon: Icon(
                  Icons.favorite,
                  // size: 40,
                )),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text("send your data"),
              icon: Icon(Icons.add),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
            ),

            InkWell(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "my design is clicked",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.grey,
                    textColor: Colors.white,
                    fontSize: 16.0);
                print("my design is clicked");
              },
              child: Card(
                color: Colors.green,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Text("click here",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center),
                ),
              ),
            )

            // IconButton
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Container(
          height: 200,
          child: Column(
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.ac_unit),
              ),
              SizedBox(
                height: 20,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.ac_unit),
              ),
            ],
          ),
        )

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Icon(Icons.ac_unit),
        // ),
        );
  }
}
