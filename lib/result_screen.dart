import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenanswer});

  final List<String> chosenanswer;

  List<Map<String, Object>> getsummarydata() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenanswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': Questions[i].text,
        'correct_answer': Questions[i].answers[0],
        'user_answer': chosenanswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData=getsummarydata();
    final numTotalQuestions = Questions.length;
    final numofCorrectQuestions = summaryData.where((data) {
      return data['user_answer']== data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'You answered $numofCorrectQuestions out of $numTotalQuestions question correctly'),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
