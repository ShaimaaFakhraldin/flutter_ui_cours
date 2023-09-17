import 'package:flutter/material.dart';

class StatFullExample  extends  StatefulWidget{
  const StatFullExample({super.key});

  @override
  State<StatFullExample> createState() {
     print("createState----------");
     return MyState ();
  }

}

class MyState  extends State<StatFullExample>{
  int age = 0 ;
  @override
  void initState() {


    age = 15;
    print("initState----------");
    super.initState();
  }
  @override
  void didChangeDependencies() {
    print("didChangeDependencies----------");
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    print("build----------");

    return  Scaffold(
        body :  Container(

          alignment: Alignment.center,
          child:  Text("hi from statFull $age"  , style: TextStyle(fontSize: 40),),
        ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          age++;
          print(age);

          setState(() {

          });

        },
        child: Icon(Icons.add),
      ),
    );
  }
  @override
  void didUpdateWidget( StatFullExample oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget----------");

  }
 @override
  void deactivate() {
   print("deactivate----------");
   super.deactivate();
  }
  @override
  void dispose() {
    print("dispose----------");
    super.dispose();
  }

}