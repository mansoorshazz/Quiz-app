import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/questions_model.dart';

import 'package:quiz_app/views/questions_page.dart/widgets/body.dart';
import 'package:quiz_app/views/questions_page.dart/widgets/options.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    // required this.question,
    required this.index,
  }) : super(key: key);
  // final int index;
  // final Question question;
  final int index;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            sampleData[index]['question'],
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.black,
                ),
          ),
          Spacer(),
          ...List.generate(
            sampleData.length,
            (selectedIndex) => Option(
              index: selectedIndex,
              press: () =>
                  _controller.checkAns(sampleData[index]['question'], selectedIndex,index),
              text: sampleData[index]['options'][selectedIndex]
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
