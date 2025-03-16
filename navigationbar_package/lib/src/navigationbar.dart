import 'package:flutter/material.dart';

class NavigationbarStyle extends StatefulWidget {
  const NavigationbarStyle({super.key});

  @override
  State<NavigationbarStyle> createState() => _NavigationbarStyleState();
}

class _NavigationbarStyleState extends State<NavigationbarStyle> {
  int _SelectedIndex = 0;
  PageController pagecontroller =  PageController();
  
  void onTapped(int index) {
    setState(() {
      _SelectedIndex =index;
    });
    pagecontroller.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME"),
      ),
      body: PageView(
        controller: PageController(),
        children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.yellow),
          Container(color: Colors.orange),
          Container(color: Colors.blue),
        ],
      ) ,
      bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon:Icon(Icons.add),label: 'Add'),
        BottomNavigationBarItem(icon:Icon(Icons.notifications),label: 'Notifs'),
        BottomNavigationBarItem(icon:Icon(Icons.person),label: 'profile'),
      ])
        
    );
  }
}


