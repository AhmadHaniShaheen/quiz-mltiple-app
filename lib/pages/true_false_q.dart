import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_multiple_choice/constants.dart';
import 'package:quiz_multiple_choice/pages/home.dart';
import 'package:quiz_multiple_choice/widgets/outline_button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../models/true_false/quiz_brain.dart';

class TrueFalseQ extends StatefulWidget {
  const TrueFalseQ({super.key});

  @override
  State<TrueFalseQ> createState() => _TrueFalseQState();
}

class _TrueFalseQState extends State<TrueFalseQ> {
  List<Icon> scorKeeper = [];
  QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                l22,
                l2,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: OutlineButton(
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ));
                      },
                      icon: Icons.close,
                      iconColor: Colors.white,
                      borderColor: Colors.white,
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: greyFont,
                            width: 2.0,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 56,
                        height: 56,
                        child: CircularProgressIndicator(
                          value: (quizBrain.questionNumber + 1) / 10,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white.withOpacity(0.4),
                            width: 4.0,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "0${quizBrain.questionNumber + 1}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Sf-Pro-Text",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        // quizBrain.favorit++;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        side: const BorderSide(color: Colors.white)),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.white),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          // "${QuizBrainMulti.favorit}",
                          "",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Sf-Pro-Text",
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                flex: 8,
                child: Center(
                  child: Text(
                    quizBrain.questionsText(),
                    style: const TextStyle(
                      fontFamily: "Sf-Pro-Text",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    checkAnswer(true);
                  },
                  child: const Text("true"),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    checkAnswer(false);
                  },
                  style: const ButtonStyle(),
                  child: const Text("False"),
                ),
              ),
              Wrap(
                children: scorKeeper,
              )
            ],
          ),
        ),
      ),
    );
  }

  checkAnswer(bool userChoice) {
    bool correctAnswer = quizBrain.questionsAnswer();
    setState(() {
      if (correctAnswer == userChoice) {
        scorKeeper.add(
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scorKeeper.add(
          const Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
    });
    if (quizBrain.isFinshed()) {
      setState(() {
        quizBrain.nextQuesition();
      });
    } else {
      Timer(const Duration(seconds: 1), () {
        Alert(context: context, title: "Finished", desc: "you are done").show();
        setState(() {
          quizBrain.reset();
          scorKeeper.clear();
        });
      });
    }
  }
}
