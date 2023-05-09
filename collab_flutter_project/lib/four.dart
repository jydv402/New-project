import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Fourthpage extends StatefulWidget {
  const Fourthpage({super.key});

  @override
  State<Fourthpage> createState() => _FourthpageState();
}

class _FourthpageState extends State<Fourthpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightGreenAccent, Colors.tealAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(children: [
          Center(
            child: Lottie.network(
                'https://assets10.lottiefiles.com/packages/lf20_U6OKyytl3f.json'),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Don't click"))
        ]),
      ),
      backgroundColor: const Color.fromARGB(255, 204, 255, 64),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        onPressed: () {
          Navigator.pop(context, "Returned from Karthik's Page");
        },
        child: const Icon(Icons.home),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Karthik's Page ;)",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
            fontSize: 33,
            fontStyle: FontStyle.italic,
          ),
        ),
        elevation: 13,
        shadowColor: Colors.deepOrangeAccent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 248, 205, 48),
                Color.fromARGB(255, 219, 68, 118),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}
