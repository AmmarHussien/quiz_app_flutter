import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quiz_app_flutter/constants.dart';
import 'package:quiz_app_flutter/controller/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController());
    return Stack(
      fit: StackFit.expand,
      children: [
        WebsafeSvg.asset(
          'assets/icons/bg.svg',
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: ProgressBar(),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text: 'Question ${questionController.questionNumber}',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: kSecondaryColor,
                              ),
                      children: [
                        TextSpan(
                          text: '/${questionController.questions.length}',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: kSecondaryColor,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 2.5,
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Expanded(
                flex: 3,
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: questionController.updateTheQnNum,
                  controller: questionController.pageController,
                  itemCount: questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: questionController.questions[index],
                  ),
                ),
              ),
              Expanded(child: Container())
            ],
          ),
        ),
      ],
    );
  }
}
