// import 'package:app_mobile_sen_troov/constants/colors.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HaveAnAccount extends StatelessWidget {
  final bool login;
  final void Function()? press;
  const HaveAnAccount({
    Key? key,
    this.login = true,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login
              ? "Vous n'avez pas de compte ? "
              : "Vous avez déjà un compte ? ",
          // style: GoogleFonts.roboto(
          //     color: Colors.black.withOpacity(0.6),
          //     fontSize: 16,
          //     fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "S'inscrire" : "Se Connecter",
            // style: GoogleFonts.roboto(
            //   color: cblack,
            //   fontWeight: FontWeight.bold,
            //   fontSize: 16,
            // ),
          ),
        ),
      ],
    );
  }
}
