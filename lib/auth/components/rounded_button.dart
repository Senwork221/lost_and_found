import 'package:app_mobile/constants/colors.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    this.color = cprimary,
    this.textcolor = Colors.white,
    required this.onPressed,
    required this.width,
  }) : super(key: key);

  final double width;
  final String text;
  final Color color, textcolor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * width,
      margin: EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: color,
            foregroundColor: cwhite,
            // textStyle: GoogleFonts.roboto(
            //   color: textcolor,
            //   fontSize: 20,
            //   fontWeight: FontWeight.w700,
            // ),
            // shadowColor: color,
            // elevation: 5,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
          ),
          child: Text(
            text,
            // style: GoogleFonts.roboto(
            //   color: textcolor,
            //   fontSize: 20,
            //   fontWeight: FontWeight.w500,
            // ),
          ),
        ),
      ),
    );
  }
}
