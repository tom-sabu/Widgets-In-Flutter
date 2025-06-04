import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "I am Tom",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 3),
          ),
          transform: Matrix4.rotationY(0.1),
          child: const Text(
            "Hello! I am inside a container!",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}