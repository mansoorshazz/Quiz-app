import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/questions_model.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // QuestionController questionController = Get.put(QuestionController());
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://www.fonewalls.com/wp-content/uploads/2020/02/WhatsApp-Background-Wallpaper-71.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Score',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '${Get.find<QuestionController>().numOfCorrectAns * 10}/${sampleData.length * 10}',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
