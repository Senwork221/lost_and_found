import 'package:app_mobile/auth/have_account.dart';
import 'package:app_mobile/auth/sign_in.screen.dart';
import 'package:app_mobile/auth/components/rounded_button.dart';
import 'package:app_mobile/auth/components/rounded_input_field.dart';
import 'package:app_mobile/auth/components/rounded_password_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final fistnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final adressController = TextEditingController();
  final telController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      RoundedInputField(
                        label: "Prenom",
                        hintext: "",
                        icon: Icons.person_outline,
                        onChanged: (valie) {},
                        textController: fistnameController,
                        inputFormatters: const [],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      RoundedInputField(
                        label: "Nom",
                        hintext: "",
                        icon: Icons.person_outlined,
                        onChanged: (valie) {},
                        textController: lastnameController,
                        inputFormatters: const [],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      RoundedInputField(
                        label: "Email",
                        hintext: "adresse@exemple.com",
                        icon: Icons.mail_outline,
                        onChanged: (valie) {},
                        textController: emailController,
                        inputFormatters: const [],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      RoundedInputField(
                        label: "Numéro",
                        hintext: "-- --- -- --",
                        icon: Icons.call_outlined,
                        onChanged: (valie) {},
                        textController: telController,
                        inputFormatters: const [],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      RoundedPasswordField(
                        hintext: "********",
                        onChanged: (valie) {},
                        passwordController: passwordController,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      RoundedInputField(
                        label: "Adresse",
                        hintext: "medina ,dakar",
                        icon: Icons.home_outlined,
                        onChanged: (valie) {},
                        textController: adressController,
                        inputFormatters: const [],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      RoundedButton(
                        text: "S'inscrire",
                        onPressed: () {},
                        width: 0.9,
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      HaveAnAccount(
                        login: false,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInScreen(),
                              ));
                        },
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
