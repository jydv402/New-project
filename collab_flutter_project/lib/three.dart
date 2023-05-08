import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key});

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage>
    with SingleTickerProviderStateMixin {
  //controller
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool bookmarked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Sreedhanya's Page"),
        ),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        child: GestureDetector(
          onTap: () {
            if (bookmarked == false) {
              bookmarked = true;
              _controller.forward();
            } else {
              bookmarked = false;
              _controller.reverse();
            }
          },
          child: Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_xdfeea13.json',
              controller: _controller),
        ),
      ),
    );
  }
}
