import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Discussion extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DiscussionState();
  }
  
}

class DiscussionState extends State<Discussion>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: (){},
       child: Icon(Icons.add),
     ),
     body: Center(
       child: Text("Discussion"),
     ),
   );
  }
  
}