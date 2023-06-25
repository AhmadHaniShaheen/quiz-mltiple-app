import 'package:flutter/material.dart';
import 'package:quiz_multiple_choice/constants.dart';
import 'package:quiz_multiple_choice/pages/home.dart';

import 'package:quiz_multiple_choice/pages/true_false_q.dart';
import 'package:quiz_multiple_choice/widgets/outline_button.dart';

class LevelOneDescription extends StatefulWidget {
  const LevelOneDescription({super.key});

  @override
  State<LevelOneDescription> createState() => _LevelOneDescriptionState();
}

class _LevelOneDescriptionState extends State<LevelOneDescription> {
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
                children: [
                  SizedBox(
                    child: OutlineButton(
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomePage();
                            },
                          ),
                        );
                      },
                      icon: Icons.close,
                      iconColor: Colors.white,
                      borderColor: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Expanded(
                flex: 4,
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/ballon-b.png"),
                  ),
                ),
              ),
              const Text(
                "Level 1 ",
                style: TextStyle(
                  fontFamily: "Sf-Pro-Text",
                  fontSize: 14,
                  color: Color.fromARGB(255, 220, 220, 220),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "True of False",
                style: TextStyle(
                  fontFamily: "Sf-Pro-Text",
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "In this quiz, you will be presented with five true/false questions. Test your knowledge and respond quickly to see how many questions you can answer correctly! ",
                style: TextStyle(
                  fontFamily: "Sf-Pro-Text",
                  fontSize: 14,
                  color: Color.fromARGB(255, 220, 220, 220),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                height: 48,
              ),
              Container(
                margin: const EdgeInsets.all(4),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const TrueFalseQ();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 56)),
                  child: const Expanded(
                    child: Center(
                      child: Text(
                        "Let's Start",
                        style: TextStyle(
                          fontFamily: "Sf-Pro-Text",
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: blueBg,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
