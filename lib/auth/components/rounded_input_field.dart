import 'package:app_mobile/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key,
    required this.hintext,
    required this.icon,
    required this.onChanged,
    required this.textController,
    required this.inputFormatters,
    required this.label,
  }) : super(key: key);
  final String hintext;
  final IconData icon;
  final String label;
  final ValueChanged<String> onChanged;
  final TextEditingController textController;
  final List<TextInputFormatter> inputFormatters;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      width: size.width,
      child: TextFormField(
        controller: textController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Le champ ne peut pas être une chaîne vide';
          }
          return null;
        },
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        // style: GoogleFonts.roboto(
        //   color: cblack.withOpacity(0.8),
        //   fontSize: 19,
        //   fontWeight: FontWeight.w600,
        // ),
        decoration: InputDecoration(
          hintText: hintext,
          labelText: label,
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 199, 192, 192),
                width: 0.4,
              ),
              borderRadius: BorderRadius.circular(15)),
          filled: true,
          fillColor: cwhite,
          prefixIcon: Icon(
            icon,
            color: cgrey,
          ),
        ),
      ),
    );
  }
}
