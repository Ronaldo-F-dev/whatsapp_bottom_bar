import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appels extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AppelsState();
  }

}

class AppelsState extends State<Appels>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Appels"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add_call),
      ),
    );
  }

}