import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 233, 229),
      appBar: AppBar(
        title: const Center(

          child: Text('A M I N A'),
        
        ),


        titleTextStyle: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white,),
        backgroundColor:const Color.fromARGB(255, 25, 50, 88),
        ),

      
        floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 25, 50, 88),
        onPressed: () {
          Navigator.pop(context, "Returned from Amina's Page");
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
