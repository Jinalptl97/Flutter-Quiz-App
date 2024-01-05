import 'package:flutter/material.dart';
import 'package:quiz_app/anser_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onselectedanswer,
  });

  final void Function(String answer) onselectedanswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentquestionIndex = 0;

  void answerQuestion(String selectedanswer) {
    widget.onselectedanswer(selectedanswer);
    setState(() {
      currentquestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = Questions[currentquestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentquestion.getshuffleAnswer().map((answer) {
              return AnswerButton(
                ansertext: answer,
                onTap: (){
                  answerQuestion(answer);
                },
              
              );
            })
          ],
        ),
      ),
    );
  }
}
