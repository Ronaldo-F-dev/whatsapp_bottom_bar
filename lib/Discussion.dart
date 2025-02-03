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
     body: Scaffold(
        body: ListView(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image:DecorationImage(image: AssetImage("assets/ronaldo.jpg"),
                                      fit: BoxFit.cover
                                  ),

                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Ronaldo"),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Bonsoir comment tu vas ?")
                                ],
                              )
                            ],
                          ),
                        ],
                      )

                    ],
                  ),

                  Column(
                    children: [
                      Badge(
                        textColor: Colors.black,
                        label: Text("1",style: TextStyle(fontSize: 13),),
                        backgroundColor: Colors.green,
                      )
                    ],
                  )
                ],
              ),

            ),
          ],
        ),
     ),
   );
  }
  
}