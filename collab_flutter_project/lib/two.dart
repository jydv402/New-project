import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lottie/lottie.dart';

import 'two_sub/sub_page_1.dart';

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
      extendBodyBehindAppBar: true,
      drawer: Padding(
        padding: const EdgeInsets.all(16),
        child: Drawer(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(18, 18))),
            backgroundColor: Colors.white,
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.elliptical(18, 18)),
                gradient: LinearGradient(colors: [Color(clrB), Color(clrA)]),
              ),
              child: ListView(
                children: [
                  const DrawerHeader(
                    child: Center(
                      child: Text(
                        "Jayadev's Page",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.arrow_outward_rounded,
                        color: Colors.black87),
                    title: const Text("Page 1",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        )),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SubPage1();
                      }));
                    },
                  )
                ],
              ),
            )),
      ),
      appBar: AppBar(
        //Blurred appbar
        iconTheme: const IconThemeData(color: Colors.black38),
        elevation: 0,
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
        title: const Text("The Gradient Isle"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
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
                  behavior: SnackBarBehavior.fixed,
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
                  //Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Changed Background Gradient"),
                    duration: Duration(milliseconds: 350),
                    behavior: SnackBarBehavior.fixed,
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
    );
  }
}
