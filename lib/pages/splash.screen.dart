// import 'package:app_mobile/auth/sign_in.screen.dart';
import 'package:app_mobile/constants/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   width: size.height * 0.17,
            //   height: size.height * 0.17,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.5),
            //         spreadRadius: 2,
            //         blurRadius: 5,
            //         offset: const Offset(0, 3),
            //       ),
            //     ],
            //     color: csecondary,
            //     border: Border.all(color: csecondary, width: 0.5),
            //   ),
            // ),
            Container(
                height: MediaQuery.of(context).size.height * 1,
                decoration: const BoxDecoration(
                  color: cprimary,
                  // shape: BoxShape.circle,
                ),
                child: DecorSplash(size: size)),
          ],
        ),
      ),
    );
  }
}

class DecorSplash extends StatelessWidget {
  const DecorSplash({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        const DecorWithIcons(
          top: 0.1,
          left: 0.25,
          row: 18,
          background: cgrey,
          icon: Icons.wallet_travel_rounded,
          colorIcon: cprimary,
        ),
        const DecorWithIcons(
          top: 0.1,
          left: 0.7,
          row: 18,
          background: cgrey,
          icon: Icons.laptop_mac_rounded,
          colorIcon: Color.fromARGB(255, 22, 52, 42),
        ),
        const DecorWithIcons(
          top: 0.2,
          left: 0.1,
          row: 18,
          background: Color.fromARGB(255, 166, 192, 227),
          icon: Icons.electric_bike_outlined,
          colorIcon: Color.fromARGB(255, 16, 66, 66),
        ),
        const DecorWithIcons(
          top: 0.2,
          left: 0.5,
          row: 15,
          background: Color.fromARGB(255, 119, 142, 178),
          icon: Icons.credit_card,
          colorIcon: Color.fromARGB(255, 17, 22, 50),
        ),
        const DecorWithIcons(
          top: 0.22,
          left: 0.85,
          row: 15,
          background: Color.fromARGB(255, 96, 145, 144),
          icon: Icons.electric_car_rounded,
          colorIcon: Color.fromARGB(255, 70, 63, 23),
        ),
        const DecorWithIcons(
          top: 0.35,
          left: 0.18,
          row: 15,
          background: csecondary,
          icon: Icons.work_outline,
          colorIcon: Colors.indigo,
        ),
        const DecorWithIcons(
          top: 0.32,
          left: 0.5,
          row: 13,
          background: Color.fromARGB(255, 102, 165, 139),
          icon: Icons.accessibility_new_outlined,
          colorIcon: Colors.indigo,
        ),
        const DecorWithIcons(
          top: 0.4,
          left: 0.8,
          row: 15,
          background: Color.fromARGB(255, 130, 164, 39),
          icon: Icons.two_wheeler_outlined,
          colorIcon: Colors.indigo,
        ),
        const DecorWithIcons(
          top: 0.5,
          left: 0.1,
          row: 18,
          background: Color.fromARGB(255, 233, 177, 105),
          icon: Icons.watch,
          colorIcon: csecondary,
        ),
        const DecorWithIcons(
          top: 0.54,
          left: 0.85,
          row: 14,
          background: csecondary,
          icon: Icons.folder_open,
          colorIcon: Colors.purpleAccent,
        ),
        const DecorWithIcons(
          top: 0.65,
          left: 0.6,
          row: 14,
          background: Color.fromARGB(255, 239, 195, 129),
          icon: Icons.key,
          colorIcon: Colors.indigo,
        ),
        const DecorWithIcons(
          top: 0.64,
          left: 0.3,
          row: 15,
          background: Color.fromARGB(255, 206, 177, 166),
          icon: Icons.card_travel,
          colorIcon: Colors.indigo,
        ),
        const DecorWithIcons(
          top: 0.7,
          left: 0.85,
          row: 15,
          background: Color.fromARGB(255, 149, 185, 214),
          icon: Icons.phone_android_outlined,
          colorIcon: Colors.indigo,
        ),
        const DecorWithIcons(
          top: 0.75,
          left: 0.1,
          row: 15,
          background: Color.fromARGB(255, 155, 201, 239),
          icon: Icons.local_car_wash_sharp,
          colorIcon: Colors.indigo,
        ),
        const DecorWithIcons(
          top: 0.75,
          left: 0.5,
          row: 15,
          background: Color.fromARGB(255, 155, 201, 239),
          icon: Icons.insert_drive_file_rounded,
          colorIcon: Colors.indigo,
        ),
        const DecorWithIcons(
          top: 0.9,
          left: 0.25,
          row: 15,
          background: Color.fromARGB(255, 155, 201, 239),
          icon: Icons.account_balance_wallet,
          colorIcon: Colors.indigo,
        ),
        const DecorWithIcons(
          top: 0.9,
          left: 0.75,
          row: 15,
          background: Color.fromARGB(255, 160, 160, 208),
          icon: Icons.home_repair_service_rounded,
          colorIcon: Colors.indigo,
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
        // Positioned(
        //   top: size.height * 0.05,
        //   bottom: size.height * 0.05,
        //   child: Container(
        //     width: size.height * 0.25,
        //     height: size.height * 0.25,
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       border: Border.all(color: const Color(0xffeeeeee), width: 1.0),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

class DecorWithIcons extends StatelessWidget {
  const DecorWithIcons({
    Key? key,
    required this.top,
    required this.left,
    required this.row,
    required this.background,
    required this.icon,
    required this.colorIcon,
  }) : super(key: key);

  final double top;
  final double left;
  final double row;
  final Color background;
  final IconData icon;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * top,
      left: size.width * left,
      child: Container(
        width: row * 2,
        height: row * 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: background,
        ),
        child: Icon(
          icon,
          color: colorIcon,
        ),
      ),
    );
  }
}
