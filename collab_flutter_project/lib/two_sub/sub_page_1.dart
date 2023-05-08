import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class SubPage1 extends StatefulWidget {
  const SubPage1({super.key});

  @override
  State<SubPage1> createState() => _SubPage1State();
}

class _SubPage1State extends State<SubPage1> {
  final RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        //Blurred appbar
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
        flexibleSpace: ClipRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            color: Colors.transparent,
          ),
        )),
        backgroundColor: Colors.white.withAlpha(140),
        title: const Text("Page 1"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            color: _randomColor.randomColor(
              colorBrightness: ColorBrightness.light,
              colorSaturation: ColorSaturation.random,
            ),
          );
        },
      ),
    );
  }
}
