import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});

  final void Function() startquiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: Color.fromARGB(100, 244, 67, 54),
        ),
        // Opacity(
        // opacity: 0.6,
        // child: Image.asset('assets/images/quiz-logo.png', width: 300)),
        const SizedBox(height: 80),
        Text(
          'Learn flutter the fun way!',
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            onPressed: startquiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'))
      ],
    ));
  }
}
