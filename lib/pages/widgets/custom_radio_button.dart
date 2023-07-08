import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton(
      {super.key,
      required this.text,
      required this.index,
      required this.color});

  final String text;
  final int index;
  final Color color;

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          value = widget.index;
        });
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: widget.color.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: (value == widget.index)
            ? const BorderSide(color: Colors.green)
            : const BorderSide(color: Colors.black),
      ),
      child: Text(
        widget.text,
        // style: TextStyle(
        //   color: (value == widget.index) ? widget.color : Colors.black,
        // ),
      ),
    );
  }
}
