import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  TextEditingController textController = TextEditingController();
  String greetingMessage = "Enter your name to be greeted!";
  void greetuser() {
    setState(() {
      String username = textController.text;
      greetingMessage = "Hello $username";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),

              TextField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  border: OutlineInputBorder(),
                ),
              ),

              ElevatedButton(
                onPressed: greetuser,
                child: Text("Tap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}