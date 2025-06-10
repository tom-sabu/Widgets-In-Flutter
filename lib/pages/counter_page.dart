import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I pushed the button $_counter times.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(onPressed: _incrementCounter, child: Text("Increment"))
          ],
        ),
      ),
    );
  }
}