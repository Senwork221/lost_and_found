import 'package:app_mobile/auth/have_account.dart';
import 'package:app_mobile/auth/reset_password.screen.dart';
import 'package:app_mobile/auth/sign_up.screen.dart';
import 'package:app_mobile/auth/components/rounded_button.dart';
import 'package:app_mobile/auth/components/rounded_input_field.dart';
import 'package:app_mobile/auth/components/rounded_password_field.dart';
import 'package:app_mobile/constants/colors.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = '/signin';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
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
                        // border: Border.all(
                        //     color: Colors.grey.withOpacity(0.5), width: 1.0),
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
                      textController: loginController,
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
                    RoundedButton(
                      text: "Se Connecter",
                      onPressed: () {},
                      width: 0.9,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedButton(
                      text: "Mot de passe oublié ?",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResetPasswordScreen(),
                          ),
                        );
                      },
                      width: 0.6,
                      color: const Color.fromARGB(255, 80, 78, 83),
                      // color: Colors.transparent,
                      textcolor: cblack.withOpacity(0.7),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    HaveAnAccount(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
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

class DecorWidget extends StatelessWidget {
  const DecorWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        const Decor(
          top: 0.05,
          left: 0.18,
          row: 13,
          background: cprimary,
        ),
        const Decor(
          top: 0.05,
          left: 0.5,
          row: 10,
          background: Colors.teal,
        ),
        const Decor(
          top: 0.08,
          left: 0.85,
          row: 7,
          background: Color.fromARGB(255, 149, 185, 214),
        ),
        const Decor(
          top: 0.25,
          left: 0.07,
          row: 7,
          background: Color.fromARGB(255, 155, 201, 239),
        ),
        const Decor(
          top: 0.18,
          left: 0.18,
          row: 12,
          background: csecondary,
        ),
        const Decor(
          top: 0.3,
          left: 0.33,
          row: 8,
          background: Color.fromARGB(255, 206, 177, 166),
        ),
        const Decor(
          top: 0.35,
          left: 0.6,
          row: 14,
          background: Color.fromARGB(255, 239, 195, 129),
        ),
        const Decor(
          top: 0.2,
          left: 0.77,
          row: 9,
          background: Color.fromARGB(255, 119, 142, 178),
        ),
        const Decor(
          top: 0.3,
          left: 0.8,
          row: 9,
          background: Color.fromARGB(255, 102, 165, 139),
        ),
        Positioned(
          top: size.height * 0.075,
          bottom: size.height * 0.075,
          child: Container(
            width: size.height * 0.2,
            height: size.height * 0.2,
            // height: 80.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
              shape: BoxShape.circle,
              color: csecondary,
              border: Border.all(color: csecondary, width: 0.5),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.075,
          bottom: size.height * 0.075,
          child: Container(
            width: size.height * 0.15,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: cprimary,
              border: Border.all(color: cgrey, width: 0.5),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.1,
          bottom: size.height * 0.1,
          child: Container(
            width: size.height * 0.09,
            height: size.height * 0.09,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage("assets/images/user.png"),
              ),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.05,
          bottom: size.height * 0.05,
          child: Container(
            width: size.height * 0.25,
            height: size.height * 0.25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xffeeeeee), width: 1.0),
            ),
          ),
        ),
      ],
    );
  }
}

class Decor extends StatelessWidget {
  const Decor({
    Key? key,
    required this.top,
    required this.left,
    required this.row,
    required this.background,
  }) : super(key: key);

  final double top;
  final double left;
  final double row;
  final Color background;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * top,
      left: size.width * left,
      child: Container(
        width: row,
        height: row,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: background,
        ),
      ),
    );
  }
}
