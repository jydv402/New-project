import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Fourthpage extends StatelessWidget {
  const Fourthpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightGreenAccent, Colors.tealAccent])),
        child: Stack(children: [
          Center(
            child: Lottie.network(
                'https://assets10.lottiefiles.com/packages/lf20_U6OKyytl3f.json'),
          ),
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
        backgroundColor: Colors.amberAccent,
        elevation: 13,
        shadowColor: Colors.deepOrangeAccent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 248, 205, 48),
              Color.fromARGB(255, 219, 68, 118)
            ]),
          ),
        ),
      ),
    );
  }
}
