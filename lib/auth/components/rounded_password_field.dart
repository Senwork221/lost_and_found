import 'package:app_mobile/constants/colors.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class RoundedPasswordField extends StatefulWidget {
  const RoundedPasswordField({
    Key? key,
    required this.hintext,
    required this.onChanged,
    required this.passwordController,
  }) : super(key: key);
  final String hintext;
  final ValueChanged<String> onChanged;
  final TextEditingController passwordController;

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var obscureText = true;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width,
      child: TextFormField(
        controller: widget.passwordController,
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Le champ ne peut pas être une chaîne vide';
          } else if (value.length < 8) {
            return 'Le mot de passe doit contenir au moins 8 caracteres';
          }
          return null;
        },
        obscureText: obscureText,
        onChanged: widget.onChanged,
        // style: GoogleFonts.roboto(
        //   color: cblack.withOpacity(0.8),
        //   fontSize: 19,
        //   fontWeight: FontWeight.w600,
        // ),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.lock_outline,
            color: cgrey,
          ),
          fillColor: cwhite,
          hintText: widget.hintext,
          labelText: 'Mot de passe',
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 199, 192, 192),
              width: 0.4,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.visibility_outlined,
              color: cgrey,
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
