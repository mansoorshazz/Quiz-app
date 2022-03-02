import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/views/questions_page.dart/questions_scrren.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://content.api.news/v3/images/bin/b2e4dca5405631f44dc0c407db05c13c?width=1024',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 2,
                ),
                Text(
                  "Let's Play Quiz,",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Enter your Information below',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Spacer(),
                TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    fillColor: Colors.black.withOpacity(0.3),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusColor: Colors.black,
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Full Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => Get.off(QuestionsScreen()),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.teal,
                          Colors.teal,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text("Let's start quiz ",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
