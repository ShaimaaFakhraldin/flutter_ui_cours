import 'package:flutter/material.dart';

class ContainerExample extends StatefulWidget {
  const ContainerExample({super.key});

  @override
  State<ContainerExample> createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Container Example") , centerTitle: true,),
      body:Column(
        children: [

          Container(
            color: Colors.red,
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: Text("my text" , style: TextStyle(fontSize: 20),),

          ),
         // SizedBox(height: 20,) ,
          Container(
              margin: EdgeInsets.only(top: 30),
            color: Colors.green,
            child: Text("my text" , style: TextStyle(fontSize:20))
          )
          ,
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.all(30),
            color: Colors.blue,
            child: Container(

              margin: EdgeInsets.all(10),
              height: 300,
              width: 300,
              color: Colors.orange,
            )),
          SizedBox(height: 20,),
          Container(
            color: Colors.brown,
            padding: EdgeInsets.all(20),
            child:Text("my text" ,style: TextStyle(fontSize: 20),) )


        ],
      )
    );
  }
}
