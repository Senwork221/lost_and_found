import 'package:app_mobile/auth/have_account.dart';
import 'package:app_mobile/auth/sign_in.screen.dart';
import 'package:app_mobile/auth/components/rounded_button.dart';
import 'package:app_mobile/auth/components/rounded_input_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final emailController = TextEditingController();

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
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: DecorWidget(size: size),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
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
                    RoundedButton(
                      text: "Envoyer",
                      onPressed: () {},
                      width: 0.9,
                    ),
                    SizedBox(
                      height: size.height * 0.02,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
