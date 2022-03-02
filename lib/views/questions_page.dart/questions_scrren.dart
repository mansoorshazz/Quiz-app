import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/views/questions_page.dart/widgets/body.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController());

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            TextButton(
              onPressed: questionController.nextQuestion,
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        body: Body(),
      ),
    );
  }
}
