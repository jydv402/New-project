
import 'package:lottie/lottie.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  bool isPlaying = false;
  final _controller = ConfettiController();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        isPlaying = _controller.state == ConfettiControllerState.playing;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
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
          body: Row(children: [
            Lottie.network(
                'https://assets6.lottiefiles.com/packages/lf20_jpxsQh.json'),
            ElevatedButton(
              onPressed: () {
                if (isPlaying) {
                  _controller.stop();
                } else {
                  _controller.play();
                }
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                backgroundColor: Colors.black,
                shape: const StadiumBorder(),
              ),
              child: Text(
                isPlaying ? 'STOP' : 'CLICK HERE !',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ]),
        ),
        ConfettiWidget(
          confettiController: _controller,
          shouldLoop: true,
          blastDirectionality: BlastDirectionality.explosive,
          gravity: 0.01,
          emissionFrequency: 0.01,
          numberOfParticles: 30,
        ),
      ],
    );
  }
}
