import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scaffold Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Method to handle bottom navigation bar item taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "I am Tom",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected Index: $_selectedIndex',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        elevation: 10,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("I am the Greatest!"),
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                "I am",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
              ListTile(
                title: Text('Alpha'), leading: Icon(Icons.local_fire_department_outlined),
              ),
              ListTile(
                title: Text('Beta'),leading: Icon(Icons.water_drop_outlined),
              ),
              ListTile(
                title: Text('Gamma'),leading: Icon(Icons.air),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(
                label: "A",
                icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
                label: "B",
                icon: Icon(Icons.search)
            ),
            BottomNavigationBarItem(
                label: "C",
                icon: Icon(Icons.account_circle)
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.greenAccent,
          onTap: _onItemTapped,
        ),
    );
  }
}