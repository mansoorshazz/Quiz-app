import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quiz_app/views/score_page/score_page.dart';
import '../models/questions_model.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AnimationController? _animationController;

  Animation? _animation;

  Animation get animation => _animation!;

  PageController? _pageController;
  PageController? get pageController => this._pageController;

  // List<Question> question = sampleData
  //     .map(
  //       (var questions) => Question(
  //         id: questions["id"],
  //         answer: questions["question"],
  //         options: questions["options"],
  //         question: questions["answer_index"],
  //       ),
  //     )
  //     .toList();

  // List<Question> get questions => this.question;

  bool _isAnwered = false;
  bool get isAnswered => this._isAnwered;

  int _correctAns = 0;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    // print(questions);
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addListener(() {
        update();
      });

    _animationController!.forward().whenComplete(nextQuestion);

    _pageController = PageController();

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController!.dispose();
    _pageController!.dispose();
  }

  checkAns(
    question,
    int selectedIndex,
    int currentIndex,
  ) {
    _isAnwered = true;
    _correctAns = sampleData[currentIndex]['answer_index'];
    _selectedAns = selectedIndex;
    if (_correctAns == _selectedAns) _numOfCorrectAns++;
    _animationController!.stop();
    update();

    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != sampleData.length) {
      _isAnwered = false;
      _pageController!
          .nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease);

      _animationController!.reset();

      _animationController!.forward().whenComplete(nextQuestion);
    } else {
      Get.to(ScoreScreen());
    }
  }

  void updateQnNUmber(int index) {
    _questionNumber.value = index + 1;
  }
}
