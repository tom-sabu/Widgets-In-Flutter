import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List names = const ["tom", "tom", "tom", "tom", "tom", "tom", "tom", "tom", "tom", "tom"];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
                // 1st box
                Container(
                  height: 350,
                  width: 100,
                  color: Colors.deepPurple,
                  child: ListView.builder(
                      itemCount: names.length,
                      itemBuilder:
                          (context, index) => ListTile(
                            title: Text(
                              names[index],
                              style: TextStyle(color: Colors.white),),
                          )
                  ),
                ),

                // 2nd box
                Container(
                  height: 350,
                  width: 100,
                  color: Colors.white,
                  child: GridView.builder(
                      itemCount: 64,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4),
                      itemBuilder: (context, index) => Container(
                        color: Colors.purpleAccent,
                        margin: EdgeInsets.all(2),
                      )
                  ),
                ),

                // 3rd box
                Container(
                  height: 350,
                  width: 100,
                  color: Colors.deepPurple[200],
                ),
          ],
        ),
      ),
    );
  }
}