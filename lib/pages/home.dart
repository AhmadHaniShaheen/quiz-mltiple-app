import 'package:flutter/material.dart';
import 'package:quiz_multiple_choice/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionNumber = 5;
  int questionCount = 10;
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
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: const CircleBorder(),
                          side: const BorderSide(color: Colors.white)),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
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
                        child: const Center(
                          child: Text(
                            "05",
                            style: TextStyle(
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
                    onPressed: () {},
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
                          "3",
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
                "question $questionNumber of $questionCount",
                style: const TextStyle(
                  fontFamily: "Sf-Pro-Text",
                  fontSize: 14,
                  color: Color.fromARGB(255, 220, 220, 220),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "In which city of Germany is the largest port?",
                style: TextStyle(
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
                padding: const EdgeInsets.all(16),
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Bremen",
                          style: TextStyle(
                            fontFamily: "Sf-Pro-Text",
                            fontSize: 18,
                            color: blueBg,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.check,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4),
                padding: const EdgeInsets.all(16),
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Bremen",
                          style: TextStyle(
                            fontFamily: "Sf-Pro-Text",
                            fontSize: 18,
                            color: blueBg,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.check,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4),
                padding: const EdgeInsets.all(16),
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Bremen",
                          style: TextStyle(
                            fontFamily: "Sf-Pro-Text",
                            fontSize: 18,
                            color: blueBg,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.check,
                    )
                  ],
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
