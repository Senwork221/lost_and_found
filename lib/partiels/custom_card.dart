import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String cardId;
  final String cardName;
  final String cardNumber;
  final bool status;
  final Color bacgroundColor;

  const CustomCard({
    Key? key,
    required this.cardId,
    required this.cardName,
    required this.cardNumber,
    required this.status,
    required this.bacgroundColor,
  }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  final _formKey = GlobalKey<FormState>();
  final cardNameController = TextEditingController();
  final cardNumberController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    cardNameController.dispose();
    cardNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    myPopMenuBtn() {
      return PopupMenuButton(
        icon: const Icon(Icons.more_horiz),
        onSelected: (value) {
          switch (value) {
            case 'delete':
              // Supprimer la carte
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Supprimer la carte'),
                    content: const Text(
                        'Êtes-vous sûr de vouloir supprimer cette carte?'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Annuler'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Supprimer'),
                        onPressed: () {
                          // Code pour supprimer la carte
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
              break;
            case 'edit':
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Modifier la carte'),
                    content: Form(
                      key: _formKey, // Utilisation de la clé globale
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Nom de la carte',
                            ),
                            onSaved: (value) {
                              // Enregistrer la valeur saisie
                              print('Nom de la carte : $value');
                              cardNumberController.text = value!;
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Numéro de la carte',
                            ),
                            onChanged: (value) {
                              // Mettre à jour la valeur saisie
                            },
                            onSaved: (value) {
                              // Enregistrer la valeur saisie
                              setState(() {
                                cardNameController.text = value!;
                              });
                              print('Numéro de la carte : $value');
                            },
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Annuler'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Modifier'),
                        onPressed: () {},
                      ),
                    ],
                  );
                },
              );
              break;
          }
        },
        itemBuilder: (BuildContext context) => [
          const PopupMenuItem(
            value: 'delete',
            child: Text('Supprimer la carte'),
          ),
          const PopupMenuItem(
            value: 'edit',
            child: Text('Modifier la carte'),
          ),
          PopupMenuItem(
            value: 'declare',
            child: widget.status ? const Text('Perdu') : const Text("Trouvée"),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: widget.bacgroundColor,
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.blue,
                        child: const Icon(
                          Icons.credit_card_outlined,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.cardName,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //SubTitle
                      Text(
                        widget.cardNumber,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              myPopMenuBtn()
            ],
          )),
    );
  }
}
