import 'package:flutter/material.dart';

 class FirstPage extends StatelessWidget {
   const FirstPage({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text(
           "WELCOME",
         ),
       ),
       body: Center(
         child: ElevatedButton(
            child: Text("Next Page"),
            onPressed: () {
              Navigator.pushNamed(context, '/secondpage');
            },
         ),
       ),
     );
   }
 }