import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    this.color = const Color.fromRGBO(21, 76, 110, 1),
    this.textcolor = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Color color, textcolor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(5),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.grey,
            textStyle: TextStyle(
              color: textcolor,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
            shadowColor: color,
            elevation: 5,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 40,
            ),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
