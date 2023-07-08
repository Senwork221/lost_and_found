import 'package:app_mobile/auth/sign_in.screen.dart';
import 'package:app_mobile/data/objects_data.dart';
import 'package:app_mobile/pages/from.dart';
import 'package:app_mobile/pages/splash.screen.dart';
import 'package:app_mobile/partiels/drawer.dart';
import 'package:app_mobile/partiels/rounded_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lost And Found',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LostAndFound",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        // leading: const Icon(
        //   Icons.menu,
        //   color: Colors.black,
        //   size: 39,
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_rounded,
              size: 29,
            ),
          ),
        ],
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            RoundedButton(
              text: "Splash Screen",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SplashScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            RoundedButton(
              text: "Authentification",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            RoundedButton(
              text: "Déclarer",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FormWidget(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Catégories",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: objects.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                          // boxShadow: const [
                          //   BoxShadow(
                          //     color: Colors.cyan,
                          //     blurRadius: 20,
                          //     spreadRadius: 10,
                          //     offset: Offset(8.0, 8.0),
                          //   ),
                          // ],
                          borderRadius: BorderRadius.circular(15),
                          color: objects[index].color),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            objects[index].icon,
                          ),
                          Text(
                            objects[index].objectName,
                          ),
                        ],
                      ));
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Récemment trouvé ou perdu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: ListView.builder(
                  itemCount: objects.length,
                  itemBuilder: (context, index) {
                    // bool isFound =
                    //     true; // Remplacez cette valeur par votre logique de vérification
                    Color statusColor = objects[index].status
                        ? const Color.fromARGB(172, 161, 222, 174)
                        // ignore: dead_code
                        : const Color.fromARGB(100, 209, 74, 64);

                    return Container(
                      height: 50,
                      margin: const EdgeInsets.only(
                          left: 2, right: 8, bottom: 2, top: 2),
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 10),
                      decoration: BoxDecoration(
                        color: statusColor,
                        borderRadius: BorderRadius.circular(5),
                        // boxShadow: const [
                        //   BoxShadow(
                        //     color: Colors.grey,
                        //     blurRadius: 5,
                        //     // spreadRadius: 5,
                        //     offset: Offset(2.0, 2.0),
                        //   ),
                        // ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              // Container(
                              //   height: 37,
                              //   width: 37,
                              //   decoration: const BoxDecoration(
                              //     shape: BoxShape.circle,
                              //     image: DecorationImage(
                              //       image: AssetImage('assets/images/user.png'),
                              //     ),
                              //   ),
                              // ),
                              Container(
                                height: 37,
                                width: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(21, 76, 110, 1),
                                ),
                                child: Icon(
                                  objects[index].icon,
                                  color: Colors.white,
                                ),
                              ),

                              const SizedBox(
                                width: 13,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    objects[index].objectName,
                                  ),
                                  Text(
                                    objects[index].createdDate,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                objects[index].lieu,
                                style: const TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
