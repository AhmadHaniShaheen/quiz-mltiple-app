import 'package:flutter/material.dart';
import 'package:quiz_multiple_choice/constants.dart';
import 'package:quiz_multiple_choice/widgets/outline_button.dart';

class LevelTwoDescription extends StatelessWidget {
  const LevelTwoDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kL2,
                kL22,
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
                        Navigator.pushNamed(context, '/');
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
                "Level 2",
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
                "Multiple Choice",
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
                "In this quiz, you will be presented with 3 multiple choice questions. Test your knowledge and respond quickly to see how many questions you can answer correctly! ",
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
                      Navigator.pushNamed(context, '/multiple_choice_page');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 56)),
                    child: const Text(
                      "Let's Start",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: blueBg,
                      ),
                    )),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
