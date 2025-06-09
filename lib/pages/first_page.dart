import 'package:flutter/material.dart';
import 'package:widgets/pages/profile_page.dart';
import 'package:widgets/pages/settings_page.dart';

import 'home_page.dart';

 class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
   final List _pages = const [
     HomePage(),
     SettingsPage(),
     ProfilePage(),
   ];

   Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Color(0xFF5D27A0),
         title: const Text(
           "WELCOME",
           style: TextStyle(
             color: Color(0xffffffff)
           ),
         ),
       ),
       drawer: Drawer(
         backgroundColor: Color(0xFFB39DDB),
         child: Column(
           children: [
             DrawerHeader(
                 child: Icon(
                   Icons.local_fire_department_sharp,
                   size: 100,
                   color: Color(0xFFE6CAFF),
                 ),
             ),

             //home page
             ListTile(
               leading: Icon(Icons.home),
               title: Text("H O M E"),
               onTap: () {
                 Navigator.pop(context);
                 Navigator.pushNamed(context, '/homepage');
               },
             ),

             //settings page
             ListTile(
               leading: Icon(Icons.settings),
               title: Text("S E T T I N G S"),
               onTap: () {
                 Navigator.pop(context);
                 Navigator.pushNamed(context, '/upsettings');
               },
             ),
           ],
         ),
       ),
       body:  widget._pages[_selectedIndex],
       bottomNavigationBar: BottomNavigationBar(
           backgroundColor: Color(0xFF5D27A0),
           selectedItemColor: Color(0xFFE6CAFF),
           unselectedItemColor: Color(0xFFE6CAFF),
           currentIndex: _selectedIndex,
           onTap: _onItemTapped,
           items: [
             //HOME
             BottomNavigationBarItem(
                 icon: Icon(Icons.home),
                 label: "Home",
             ),


             //SETTINGS
             BottomNavigationBarItem(
                 icon: Icon(Icons.settings),
                 label: "Settings"
             ),


             //PROFILE
             BottomNavigationBarItem(
                 icon: Icon(Icons.person),
                 label: "Profile"
             ),
           ],
       ),
     );
   }
}