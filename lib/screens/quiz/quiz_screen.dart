import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/controller/question_controller.dart';
import 'package:quiz_app_flutter/screens/score/score_screen.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: questionController.nextQuestion,
            child: const Text(
              'Skip',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: const Body(),
    );
  }
}
