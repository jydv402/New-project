import 'package:flutter/material.dart';
import 'dart:math';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  Random r = Random();

  int clrA = 0xffab68f2;
  int clrB = 0xff90fcda;
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[500],
          title: const Text("Jayadev's Page"),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(clrA), Color(clrB)])),
        ),
        floatingActionButton: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              right: 20,
              bottom: 30,
              child: FloatingActionButton(
                elevation: 10,
                onPressed: () {
                  Navigator.pop(context, "Returned from Jayadev's Page");
                },
                backgroundColor: Colors.deepPurple[500],
                hoverColor: Colors.red,
                child: const Icon(
                  Icons.home_filled,
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 110,
              child: FloatingActionButton(
                elevation: 10,
                onPressed: () {
                  setState(() {
                    clrA = r.nextInt(0xffffffff);
                    clrB = r.nextInt(0xffffffff);
                  });
                },
                backgroundColor: Colors.deepPurple[500],
                hoverColor: Colors.green[400],
                child: const Icon(
                  Icons.restart_alt_sharp,
                ),
              ),
            )
          ],
        ));
  }
}
