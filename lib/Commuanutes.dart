import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Communautes extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CommunautesState();
  }

}

class CommunautesState extends State<Communautes>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Communautes"),
      ),
    );
  }

}