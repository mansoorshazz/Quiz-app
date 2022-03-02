import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/questions_model.dart';

import 'package:quiz_app/views/questions_page.dart/widgets/question_card.dart';

import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());

    return Stack(
      children: [
        buldBackgroundImage(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ProgressBar(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: buildQuestionNumbers(context),
            ),
            Divider(
              thickness: 1.5,
              color: Colors.grey.withOpacity(0.3),
              endIndent: 23,
              indent: 16,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: Get.find<QuestionController>().pageController,
                itemCount: 4,
                onPageChanged: Get.find<QuestionController>().updateQnNUmber,
                itemBuilder: (context, index) => QuestionCard(
                  index: index,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  buildQuestionNumbers(BuildContext context) {
    return Obx(
      () => Text.rich(
        TextSpan(
          text:
              'Questions ${Get.find<QuestionController>().questionNumber.value}',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white),
          children: [
            TextSpan(
              text: "/${sampleData.length}",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Image buldBackgroundImage() {
    return Image.network(
      'https://images5.alphacoders.com/958/thumb-1920-958580.jpg',
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
