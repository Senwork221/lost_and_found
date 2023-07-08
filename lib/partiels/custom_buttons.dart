import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final IconData icon;
  final double size;
  final bool isIcon;

  const CustomButtons(
      {Key? key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.icon,
      required this.size,
      this.isIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor, width: 1.0)),
      child: Center(
        child: isIcon == false
            ? Text(
                text,
                style: TextStyle(color: textColor),
              )
            : Icon(
                icon,
                color: textColor,
              ),
      ),
    );
  }
}
