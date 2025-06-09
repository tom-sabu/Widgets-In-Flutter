import 'package:flutter/material.dart';
import 'package:widgets/pages/first_page.dart';
import 'package:widgets/pages/home_page.dart';
import 'package:widgets/pages/settings_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        "/upsettings": (context) => SettingsPage(),
      },
    );
  }
}