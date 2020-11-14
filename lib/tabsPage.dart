
import 'package:flutter/material.dart';
import 'package:tabbar_demo/screens/dashboard.dart';

class TabsPage extends StatefulWidget {

  @override
  _TabsPageState createState() => _TabsPageState();
}



class _TabsPageState extends State<TabsPage> {
  int _tabIndex = 0;

  Widget choosePage(){
    switch (_tabIndex) {
      case 0: 
        return Dashboard();
        break;
      case 1: 
        return Dashboard();
        break;
      case 2: 
        return Dashboard();
        break;

      default: 
        return Dashboard();
        break;
    }
   }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: choosePage(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (_index) {
          _tabIndex = _index;
        },
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(Icons.remove_red_eye),
          ),

          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(Icons.notifications),
          ),
          
        ],
      ),
    );
  }
}