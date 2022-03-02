import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/controllers/question_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.only(
        top: 60,
      ),
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white38,
        ),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            return Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          HexColor('#09203F'),
                          HexColor('#537895'),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${(controller.animation.value * 60).round()} sec',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ))
              ],
            );
          }),
    );
  }
}
