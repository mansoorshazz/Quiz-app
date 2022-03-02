import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/views/Welcome_page/welcome_screen.dart';
import 'package:quiz_app/views/questions_page.dart/questions_scrren.dart';
import 'package:quiz_app/views/score_page/score_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
      home: WelcomeScreen(),
    );
  }
}
