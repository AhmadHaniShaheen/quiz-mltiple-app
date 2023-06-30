import 'package:flutter/material.dart';
import 'package:quiz_multiple_choice/constants.dart';
import 'package:quiz_multiple_choice/widgets/outline_button.dart';

class MyLevelWidget extends StatelessWidget {
  final String image;
  final IconData iconName;
  final String title;
  final String levelNumber;
  final List<Color> colors;
  final String route;
  const MyLevelWidget({
    super.key,
    required this.image,
    required this.iconName,
    required this.title,
    required this.levelNumber,
    required this.colors,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(top: 54, bottom: 24),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 5,
                  offset: Offset(1, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlineButton(
                  function: () {
                    Navigator.pushNamed(context, route);
                  },
                  icon: iconName,
                  iconColor: Colors.white,
                  borderColor: Colors.white,
                  shap: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                Text(
                  levelNumber,
                  style: const TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Image(
            image: AssetImage(image),
          ),
        ],
      ),
    );
  }
}
