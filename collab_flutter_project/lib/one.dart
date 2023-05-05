import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 43, 88),
        appBar: AppBar(
          title: const Center(
            child: Text('A M I N A :)'),
          ),
          titleTextStyle: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.pop(context, "Returned from Amina's Page");
          },
          child: const Icon(Icons.home),
        ),
        body: Container(
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                backgroundColor: Colors.black,
                shape: const StadiumBorder(),
              ),
              child: const Text(
                'CLICK HERE ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ));
  }
}
