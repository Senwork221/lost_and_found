import 'package:app_mobile/pages/widgets/custom_radio_button.dart';
import 'package:app_mobile/partiels/drawer.dart';
import 'package:app_mobile/partiels/rounded_input_field.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  int currentStep = 0;
  bool isCompleted = false;

  final stateController = TextEditingController();
  final categoryController = TextEditingController();
  final nameController = TextEditingController();
  final dateController = TextEditingController();
  final localityController = TextEditingController();

  final TextEditingController dropdownController = TextEditingController();

  String? dropDownValue = "Accessoires";

  List<String> categories = [
    "Accessoires",
    "Appareils électroniques",
    "Bijoux",
    "Clés",
    "Documents",
    "Vêtements",
    "Instruments de musique",
    "Jouets",
    "Sac à dos",
    "Ustensiles",
    "Autres",
  ];
  String selectedCategory = "Accessoires";

  String localeDate(DateTime date, BuildContext context) {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    return localizations.formatFullDate(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Déclaration",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
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
      // body: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       const Text(
      //         "Etat de l'objet :",
      //         textAlign: TextAlign.start,
      //         style: TextStyle(
      //           fontSize: 18,
      //           fontWeight: FontWeight.w500,
      //         ),
      //       ),
      //       RoundedInputField(
      //         hintext: "trouvé ou perdu",
      //         icon: const Icon(Icons.person),
      //         onChanged: (valie) {},
      //       ),
      //       const Text(
      //         'Catégories :',
      //         textAlign: TextAlign.start,
      //         style: TextStyle(
      //           fontSize: 18,
      //           fontWeight: FontWeight.w500,
      //         ),
      //       ),
      //       RoundedInputField(
      //         hintext: "Select catégorie",
      //         icon: const Icon(Icons.person),
      //         onChanged: (valie) {},
      //       ),
      //       const Text(
      //         'Nom mentionné :',
      //         textAlign: TextAlign.start,
      //         style: TextStyle(
      //           fontSize: 18,
      //           fontWeight: FontWeight.w500,
      //         ),
      //       ),
      //       RoundedInputField(
      //         hintext: "Nom ...",
      //         icon: const Icon(Icons.person),
      //         onChanged: (valie) {},
      //       ),
      //       const Text(
      //         'Ou :',
      //         textAlign: TextAlign.start,
      //         style: TextStyle(
      //           fontSize: 18,
      //           fontWeight: FontWeight.w500,
      //         ),
      //       ),
      //       RoundedInputField(
      //         hintext: "Lieu ...",
      //         icon: const Icon(Icons.person),
      //         onChanged: (valie) {},
      //       ),
      //       const Text(
      //         'Quand :',
      //         textAlign: TextAlign.start,
      //         style: TextStyle(
      //           fontSize: 18,
      //           fontWeight: FontWeight.w500,
      //         ),
      //       ),
      //       RoundedInputField(
      //         hintext: "Temps ...",
      //         icon: const Icon(Icons.person),
      //         onChanged: (valie) {},
      //       ),
      //       const Text(
      //         'Numéro :',
      //         textAlign: TextAlign.start,
      //         style: TextStyle(
      //           fontSize: 18,
      //           fontWeight: FontWeight.w500,
      //         ),
      //       ),
      //       RoundedInputField(
      //         hintext: "Numéro de la carte ...",
      //         icon: const Icon(Icons.person),
      //         onChanged: (valie) {},
      //       ),
      //       const Text(
      //         'Marque :',
      //         textAlign: TextAlign.start,
      //         style: TextStyle(
      //           fontSize: 18,
      //           fontWeight: FontWeight.w500,
      //         ),
      //       ),
      //       RoundedInputField(
      //         hintext: "les marques ...",
      //         icon: const Icon(Icons.person),
      //         onChanged: (valie) {},
      //       ),
      //     ],
      //   ),
      // ),
      body: isCompleted
          ? const Text(
              'Completed',
            )
          : SingleChildScrollView(
              child: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                      primary: Color.fromRGBO(21, 76, 110, 1)),
                ),
                child: Stepper(
                  type: StepperType.vertical,
                  steps: getSteps(),
                  currentStep: currentStep,
                  onStepContinue: () {
                    final isLastStep = currentStep == getSteps().length - 1;

                    if (isLastStep) {
                      setState(() => isCompleted = true);
                      print("Completed");
                    } else {
                      setState(() => currentStep += 1);
                    }
                  },
                  onStepCancel: () {
                    setState(
                      () => currentStep -= 1,
                    );
                  },
                ),
              ),
            ),
    );
  }

  List<Step> getSteps() {
    List<Step> steps = [];

    // Étape 1 : État
    steps.add(
      Step(
        title: const Text("État"),
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        content: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "État de l'objet :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomRadioButton(
                  text: 'Trouvé',
                  index: 1,
                  color: Colors.green,
                ),
                CustomRadioButton(
                  text: 'Perdu',
                  index: 2,
                  color: Colors.red,
                )
              ],
            ),
          ],
        ),
      ),
    );

    // Étape 2 : Catégories
    steps.add(
      Step(
        title: const Text("Catégories"),
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Catégories :',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 200, 234, 255),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Flex(direction: Axis.vertical, children: [
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Sélectionnez une catégorie',
                  ),
                  value: selectedCategory,
                  items: categories.map((String category) {
                    IconData icon;
                    switch (category) {
                      case 'Accessoires':
                        icon = Icons.watch;
                        break;
                      case 'Appareils électroniques':
                        icon = Icons.devices;
                        break;
                      case 'Bijoux':
                        icon = Icons.join_left;
                        break;
                      case 'Clés':
                        icon = Icons.vpn_key;
                        break;
                      case 'Documents':
                        icon = Icons.description;
                        break;
                      case 'Vêtements':
                        icon = Icons.style;
                        break;
                      case 'Instruments de musique':
                        icon = Icons.music_note;
                        break;
                      case 'Jouets':
                        icon = Icons.toys;
                        break;
                      case 'Sac à dos':
                        icon = Icons.backpack;
                        break;
                      case 'Ustensiles':
                        icon = Icons.kitchen;
                        break;
                      case 'Autres':
                        icon = Icons.category;
                        break;
                      default:
                        icon = Icons.category;
                    }

                    return DropdownMenuItem<String>(
                      value: category,
                      child: Row(
                        children: [
                          Icon(icon),
                          const SizedBox(width: 10),
                          Text(category),
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCategory = newValue!;
                      categoryController.text = selectedCategory;
                    });
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );

    // Étape 3 : Date et Lieu
    steps.add(
      Step(
        title: const Text("Date et Lieu"),
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Où ?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            RoundedInputField(
              controller: localityController,
              hintext: "Le lieu",
              icon: const Icon(Icons.location_on),
              onChanged: (valie) {},
            ),
            const Text(
              'Quand ?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            RoundedInputField(
              controller: dateController,
              hintext: "La date",
              icon: const Icon(Icons.calendar_today),
              onChanged: (valie) {},
            ),
            ElevatedButton(
              onPressed: () async {
                final DateTime? selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (selectedDate != null) {
                  setState(() {
                    dateController.text = localeDate(selectedDate, context);
                  });
                }
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(width: 5),
                  Text('Sélectionner une date'),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    // Étape 4 : Champs spécifiques en fonction de la catégorie
    if (selectedCategory == 'Accessoires') {
      steps.add(
        Step(
          title: const Text("Accessoires"),
          state: currentStep > 3 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 3,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Couleur',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // Expanded(
              //   child: ListView(
              //     children: <Widget>[
              //       Container(
              //           decoration: const BoxDecoration(color: Colors.red),
              //           child: const ListTile(
              //               leading: Icon(Icons.euro_symbol),
              //               title: Text('250,00'))),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      );
    } else if (selectedCategory == 'Appareils électroniques') {
      steps.add(
        Step(
          title: const Text("Appareils électroniques"),
          state: currentStep > 3 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 3,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Appareils',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              RoundedInputField(
                controller: localityController,
                hintext: "Appareils électroniques",
                icon: const Icon(Icons.location_on),
                onChanged: (valie) {},
              ),
            ],
          ),
        ),
      );
    }
    // Ajouter d'autres conditions pour les autres catégories

    // Étape finale : Complete
    steps.add(
      Step(
        title: const Text("Complete"),
        state: currentStep > 3 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 3,
        content: Container(),
      ),
    );

    return steps;
  }
}
