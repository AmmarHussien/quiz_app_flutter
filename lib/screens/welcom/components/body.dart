import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/constants.dart';
import 'package:quiz_app_flutter/screens/quiz/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        WebsafeSvg.asset(
          'assets/icons/bg.svg',
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Text(
                  "Let's Play Quiz",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Text(
                  'Enter Your Informations below',
                ),
                const Spacer(),
                TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Color(0xFF1C2341),
                    filled: true,
                    hintText: 'Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const CustomButtom(),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(const QuizScreen()),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(
          kDefaultPadding * 0.75,
        ),
        decoration: const BoxDecoration(
          gradient: kPrimaryGradient,
          borderRadius: BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
        ),
        child: Text(
          'Lets Start Quiz',
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
