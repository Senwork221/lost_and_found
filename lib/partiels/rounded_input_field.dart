import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key,
    required this.hintext,
    required this.icon,
    required this.onChanged,
    this.obscur = false,
    required this.controller,
  }) : super(key: key);
  final String hintext;
  final Icon icon;
  final ValueChanged<String> onChanged;
  final bool obscur;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        obscureText: obscur,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            // icon: icon,
            hintText: hintext,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: size.width * 0.96,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 200, 234, 255),
            borderRadius: BorderRadius.circular(9)),
        child: child);
  }
}
