import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  String? myValue;
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Key? key;
  UniqueKey? uniqueKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          key: uniqueKey,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
              child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "TextField",
                      hintText: "Enter User Name",
                      hintStyle:
                          TextStyle(fontSize: 8, color: Colors.grey[800]),
                      suffixIcon: const Icon(
                        Icons.person,
                        color: Colors.red,
                        size: 28,
                      ),
                      prefixIcon: const Icon(Icons.label),
                      // filled: true,
                      //fillColor: Colors.green,
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                    controller: controller,
                    onChanged: (String value) {
                      myValue = value;
                      setState(() {});
                    },
                    onSubmitted: (String value) {
                      print("Submitted");
                      print(value);
                    },
                    maxLines: 5,
                    minLines: 2,
                  ),
                ),
                Container(
                  key: UniqueKey(),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "TextFormField ",
                      hintText: "Enter User Name",
                      hintStyle:
                          TextStyle(fontSize: 8, color: Colors.grey[800]),
                      suffixIcon: const Icon(
                        Icons.person,
                        color: Colors.red,
                        size: 28,
                      ),
                      prefixIcon: const Icon(Icons.label),
                      // filled: true,
                      //fillColor: Colors.green,
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                    controller: controller2,
                    onChanged: (String value) {
                      myValue = value;
                      setState(() {});
                    },
                    onSaved: (String? value) {},
                    validator: (String? value) {
                      // if (value == null || value.isEmpty) {
                      //   return "Enter your data";
                      // }
                    },
                    onFieldSubmitted: (String? value) {
                      print("Submitted");
                      print(value);
                    },
                    maxLines: 5,
                    minLines: 2,
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "TextFormField 2",
                      hintText: "Enter User Name",
                      hintStyle:
                          TextStyle(fontSize: 8, color: Colors.grey[800]),
                      suffixIcon: const Icon(
                        Icons.person,
                        color: Colors.red,
                        size: 28,
                      ),
                      prefixIcon: const Icon(Icons.label),
                      // filled: true,
                      //fillColor: Colors.green,
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                    onSaved: (String? value) {},
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your data";
                      }
                    },
                    onFieldSubmitted: (String? value) {
                      print("Submitted");
                      print(value);
                    },
                    maxLines: 5,
                    minLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      formKey.currentState!.validate();
                    },
                    child: const Text("login"))
              ],
            ),
          ))),
    );
  }

  void checkData() {
    controller.text;
  }
}
