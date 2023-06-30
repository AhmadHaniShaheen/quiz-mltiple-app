import 'package:flutter/material.dart';
import 'package:quiz_multiple_choice/constants.dart';
import 'package:quiz_multiple_choice/widgets/my_level_widget.dart';
import 'package:quiz_multiple_choice/widgets/outline_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> levels = [
    const MyLevelWidget(
      title: "True or False",
      levelNumber: "Level 1",
      image: "assets/images/bags.png",
      iconName: Icons.check,
      route: '/level_one_description',
      colors: [
        kL1,
        kL12,
      ],
    ),
    const MyLevelWidget(
      route: '/level_two_description',
      image: "assets/images/ballon-s.png",
      iconName: Icons.play_arrow,
      title: "Multiple Choice",
      levelNumber: "Level 2",
      colors: [
        kL2,
        kL22,
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
        padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
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
              const SizedBox(
                height: 24,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                addAutomaticKeepAlives: false,
                cacheExtent: 100,
                itemCount: levels.length,
                itemBuilder: (context, index) {
                  return levels[index];
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
