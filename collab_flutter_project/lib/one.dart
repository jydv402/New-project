import 'package:flutter/material.dart';


class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 43, 88),
      appBar: AppBar(
        title: const Center(
          child: Text('A M I N A  :)'),
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
    );
    
  }
}
