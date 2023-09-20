import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextExample extends StatefulWidget {
  const TextExample({super.key});

  @override
  State<TextExample> createState() => _TextExampleState();
}

class _TextExampleState extends State<TextExample> {
  String name = "Shaimaa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center (child:Column(
        children: [
          Text("with  background" , style:
          TextStyle(fontSize: 20  ,color: Colors.red  ,
              background:  Paint()..color = Colors.green..style = PaintingStyle.stroke..strokeWidth =5.0) ,) ,
          SizedBox(height: 20,),

          Text ("with  foreground" , style:TextStyle(fontSize: 50 ,
              foreground: Paint()..color = Colors.green..style = PaintingStyle.stroke ..strokeWidth = .8))
         , SizedBox(height: 20,),
          Text ("with  shadow", style:TextStyle(fontSize: 50,
            shadows: [
              Shadow(
              color: Colors.red ,
              offset: Offset( 0,-10)
            ),
              Shadow(
              color: Colors.blue,
              offset: Offset( 0,10)
            )

            ]
             ))
          , SizedBox(height: 20,),
          Text("change weight"  ,style: TextStyle(fontSize:  20 , fontWeight: FontWeight.bold),)
          , SizedBox(height: 20,),
          Text("with italics" ,style: TextStyle(fontSize:20 , fontStyle: FontStyle.italic)),
        SizedBox(height: 20,),
      Text("with latter space 4"  ,style: TextStyle(fontSize: 20  , letterSpacing: 4),)
         , SizedBox(height: 20,),

          Text("with latter space 20"  ,style: TextStyle(fontSize: 20  , letterSpacing: 20),)
      ,SizedBox(width: 50 , height: 20 ,child : Text ("sdjsdhsjdhdjshskhskdhskdshdsk" ,maxLines: 1,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 20),)) ,

          Container(
            width: 100,
            padding: new EdgeInsets.only(right: 13.0),
            child: new Text(
              'Text largeeeeeeeeeeeeeeeeeeeeeee',
              overflow: TextOverflow.ellipsis,
              style: new TextStyle(
                fontSize: 50.0,
                fontFamily: 'Roboto',
                color: new Color(0xFF212121),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      )

      ),



    );
  }
}
