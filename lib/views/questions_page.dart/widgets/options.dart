import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
    required this.index,
    required this.press,
    required this.text,
  }) : super(key: key);

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          Color getTheRightColor() {
            if (controller.isAnswered) {
              if (index == controller.correctAns) {
                return Colors.green;
              } else if (index == controller.selectedAns &&
                  controller.selectedAns != controller.correctAns) {
                return Colors.red;
              }
            }
            return Colors.grey;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: getTheRightColor()),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${index + 1}. ${text}',
                    style: TextStyle(
                      color: getTheRightColor(),
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: getTheRightColor() == Colors.grey
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: getTheRightColor(),
                      ),
                    ),
                    child: getTheRightColor() == Colors.green
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 16,
                          )
                        : Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 16,
                          ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
