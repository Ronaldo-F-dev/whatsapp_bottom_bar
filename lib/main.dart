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


  void _onSwipeLeft() {
    if (pageIndex < pages.length - 1) {
      setState(() {
        pageIndex++;
      });
    }
  }

  void _onSwipeRight() {
    if (pageIndex > 0) {
      setState(() {
        pageIndex--;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details){
        if (details.primaryVelocity! < 0) {
          _onSwipeLeft();
        } else if (details.primaryVelocity! > 0) {
          _onSwipeRight();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            Wrap(
              spacing: 20, // Définit l’espace entre les éléments
              children: [
                Icon(Icons.camera_alt),
                Icon(Icons.search),
                Icon(Icons.more_vert),
              ],
            )
          ],
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
      ),
    );
  }
}