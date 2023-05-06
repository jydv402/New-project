import 'package:flutter/material.dart';

class Fourthpage extends StatelessWidget {
  const Fourthpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Karthik's Page",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 33))),
    );
  }
}
