import 'package:collab_flutter_project/three.dart';
import 'package:flutter/material.dart';
import 'package:collab_flutter_project/one.dart';
import 'four.dart';
import 'two.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(138, 204, 216, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Buttons',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Firstpage();
                    }));
                  },
                  child: const Text('1')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Secondpage();
                    }));
                  },
                  child: const Text('2')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Thirdpage();
                    }));
                  },
                  child: const Text('3')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Fourthpage();
                    }));
                  },
                  child: const Text('4')),
            ),
          ]),
        ),
      ),
    );
  }
}
