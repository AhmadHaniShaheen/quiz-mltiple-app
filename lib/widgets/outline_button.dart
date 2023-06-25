import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color borderColor;
  final OutlinedBorder shap;
  final Function() function;

  const OutlineButton({
    super.key,
    required this.icon,
    required this.iconColor,
    this.shap = const CircleBorder(),
    required this.borderColor,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
      child: SizedBox(
        width: 56,
        child: OutlinedButton(
          onPressed: function,
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(8),
              shape: shap,
              side: BorderSide(
                color: borderColor,
              )),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
