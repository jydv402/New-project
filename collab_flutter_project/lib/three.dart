import 'package:flutter/material.dart';
import 'dart:math';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key});

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  Random r = Random();
  int c1 = 0xffBCEDF6;
  int c2 = 0xff6B7FD7;
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 75, 3, 3),
        title: const Text("Sreedhanya's page"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(colors: [Color(c1), Color(c2)]))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(80, 32, 5, 5),
        onPressed: () {
          setState(() {
            c1 = r.nextInt(0xffffffff);
            c2 = r.nextInt(0xffffffff);
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Changed Background Gradient"),
              duration: Duration(milliseconds: 350),
            ));
          });
        },
        child: const Icon(Icons.flutter_dash),
      ),
    );
  }
}
