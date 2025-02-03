import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StatusState();
  }

}

class StatusState extends State<Status>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Status"),
      ),
    );
  }

}