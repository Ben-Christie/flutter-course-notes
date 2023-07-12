// although normally, we've put the MaterialApp into the main, because we want to move between screens,
// we need to create it within a stateful widget like this, so that we can control the screen with state

// Handles all screens within the application

import 'package:flutter/material.dart';

import 'package:quiz/data/questions_data.dart';
import 'package:quiz/home_screen.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'home-screen';
  List<String> selectedAnswers = [];

  void switchScreen(String screen) {
    // executes build method again, allows for UI update!
    setState(() {
      activeScreen = screen;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questionList.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // ternary expression
    Widget screenWidget = HomeScreen(switchScreen, 'question-screen');

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    } else if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        restartQuizFunc: switchScreen,
        screenToReturn: 'question-screen',
      );
      selectedAnswers = [];
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
