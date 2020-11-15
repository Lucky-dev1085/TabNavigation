import 'package:flutter/material.dart';
import 'package:tabbar_demo/screens/dashboard.dart';
import 'package:tabbar_demo/screens/tab2.dart';
import 'package:tabbar_demo/screens/tab3.dart';

class TabsPage extends StatefulWidget {

  @override
  _TabsPageState createState() => _TabsPageState();
}



class _TabsPageState extends State<TabsPage> {
  int _tabIndex = 0;
  final List<Widget> _children = [Dashboard(), Tab2(), Tab3()];

  void onTabTapped(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _children[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _tabIndex,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.remove_red_eye),
          ),

          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.notifications),
          ),
          
        ],
      ),
    );
  }
}