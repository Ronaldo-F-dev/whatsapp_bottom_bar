import 'package:flutter/material.dart';
import 'package:whatsap_bottom_bar/Appels.dart';
import 'package:whatsap_bottom_bar/Commuanutes.dart';
import 'package:whatsap_bottom_bar/Discussion.dart';
import 'package:whatsap_bottom_bar/Status.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorSchemeSeed : Colors.green,
        scaffoldBackgroundColor: Colors.white,
    ),
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return HomeState();
  }

}
class HomeState extends State<Home>{
  final pages = [
    Discussion(),
    Status(),
    Communautes(),
    Appels()
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WHATSAPP"),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey,width: 0.2)
            )
          ),
          child: NavigationBar(
            backgroundColor: Colors.white,
              selectedIndex : pageIndex,
              onDestinationSelected: (int index){
                setState(() {
                  pageIndex = index;
                });
              },
              destinations: [
                NavigationDestination(
                    icon: Icon(Icons.message),
                    label: "Discussion"
                ),
                NavigationDestination(
                    icon: Icon(Icons.filter_tilt_shift),
                    label: "Status"
                ),
                NavigationDestination(
                    icon: Icon(Icons.group),
                    label: "Communautés"
                ),
                NavigationDestination(
                    icon: Icon(Icons.phone),
                    label: "Appels"
                )
              ]
          ),
        ),
        body: pages[pageIndex],
    );
  }

}
