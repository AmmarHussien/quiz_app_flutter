import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/constants.dart';
import 'package:quiz_app_flutter/controller/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          WebsafeSvg.asset('assets/icons/bg.svg'),
          Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              Text(
                'Score',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: kSecondaryColor,
                    ),
              ),
              const Spacer(),
              Text(
                '${questionController.correctAns * 10}/${questionController.questions.length * 10}',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: kSecondaryColor,
                    ),
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
