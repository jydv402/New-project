import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lottie/lottie.dart';

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
          child: Stack(children: [
            Center(
              child: Lottie.network(
                'https://assets1.lottiefiles.com/packages/lf20_96bovdur.json',
                alignment: const Alignment(0, 0),
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width * 0.65,
              ),
            ),
          ]),
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
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Returned to Homepage"),
                    duration: Duration(milliseconds: 500),
                    behavior: SnackBarBehavior.floating,
                  ));
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
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Changed Background Gradient"),
                      duration: Duration(milliseconds: 350),
                    ));
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
