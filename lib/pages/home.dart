import 'package:flutter/material.dart';
import 'package:quiz_multiple_choice/constants.dart';
import 'package:quiz_multiple_choice/pages/level_description_page.dart';
import 'package:quiz_multiple_choice/widgets/my_level_widget.dart';
import 'package:quiz_multiple_choice/widgets/outline_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          OutlineButton(
            function: () {},
            icon: Icons.favorite,
            iconColor: Colors.blue,
            borderColor: Colors.blue.withOpacity(0.3),
          ),
          OutlineButton(
            function: () {},
            icon: Icons.person,
            iconColor: Colors.blue,
            borderColor: Colors.blue.withOpacity(0.3),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Let's Play",
                style: TextStyle(
                  color: redFont,
                  fontSize: 32,
                  fontFamily: kFontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Be the first",
                style: TextStyle(
                  fontFamily: kFontFamily,
                  fontSize: 14,
                  color: greyFont,
                ),
              ),
              MyLevelWidget(
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LevelDescriptionPage();
                      },
                    ),
                  );
                },
                image: "assets/images/bags.png",
                iconName: Icons.check,
                title: "True or False",
                levelNumber: "Level 1",
                colors: const [
                  kL1,
                  kL12,
                ],
              ),
              MyLevelWidget(
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LevelDescriptionPage();
                      },
                    ),
                  );
                },
                image: "assets/images/ballon-s.png",
                iconName: Icons.play_arrow,
                title: "Multiple Choice",
                levelNumber: "Level 2",
                colors: const [
                  kL2,
                  kL22,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
