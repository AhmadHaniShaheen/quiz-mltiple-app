import 'package:flutter/material.dart';
import 'package:quiz_multiple_choice/constants.dart';
import 'package:quiz_multiple_choice/pages/home.dart';
import 'package:quiz_multiple_choice/quiz_brain.dart';
import 'package:quiz_multiple_choice/widgets/outline_button.dart';

class MultiPage extends StatefulWidget {
  const MultiPage({
    super.key,
  });
  @override
  State<MultiPage> createState() => _MultiPageState();
}

class _MultiPageState extends State<MultiPage> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      const SizedBox(
                        width: 56,
                        height: 56,
                        child: CircularProgressIndicator(
                          value: 0.5,
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
                            "0${quizBrain.questionNumber}",
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
                        quizBrain.favorit++;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        side: const BorderSide(color: Colors.white)),
                    child: Row(
                      children: [
                        const Icon(Icons.favorite, color: Colors.white),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "${quizBrain.favorit}",
                          style: const TextStyle(
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
              const Expanded(
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/ballon-b.png"),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "question ${quizBrain.questionNumber} of ${quizBrain.getQuestionBankCount()}",
                style: const TextStyle(
                  fontFamily: "Sf-Pro-Text",
                  fontSize: 14,
                  color: Color.fromARGB(255, 220, 220, 220),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                quizBrain.getQuestionText(),
                style: const TextStyle(
                  fontFamily: "Sf-Pro-Text",
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                margin: const EdgeInsets.all(4),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      quizBrain.nextQuestion();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 56)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            quizBrain.getQuestionOption()[0],
                            style: const TextStyle(
                              fontFamily: "Sf-Pro-Text",
                              fontSize: 18,
                              color: blueBg,
                            ),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.check,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      quizBrain.nextQuestion();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 56)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            quizBrain.getQuestionOption()[1],
                            style: const TextStyle(
                              fontFamily: "Sf-Pro-Text",
                              fontSize: 18,
                              color: blueBg,
                            ),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.check,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      quizBrain.nextQuestion();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 56)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            quizBrain.getQuestionOption()[2],
                            style: const TextStyle(
                              fontFamily: "Sf-Pro-Text",
                              fontSize: 18,
                              color: blueBg,
                            ),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.check,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
