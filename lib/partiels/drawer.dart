import 'package:app_mobile/main.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'List_Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: const Text(
              'Accueil',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.list,
              color: Colors.blue,
            ),
            title: const Text(
              'Mes Objets',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.search,
              color: Colors.blue,
            ),
            title: const Text(
              'Recherche un Objet',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const Settings(),
              //   ),
              // );
              // Ajoutez ici le code de navigation vers "Recherche un Objet"
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.contact_phone,
              color: Colors.blue,
            ),
            title: const Text(
              'Contact',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              // Ajoutez ici le code de navigation vers "Contact"
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.security,
              color: Colors.blue,
            ),
            title: const Text(
              'Politique de Confidentialité',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              // Ajoutez ici le code de navigation vers "Politique de Confidentialité"
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
              color: Colors.blue,
            ),
            title: const Text(
              'Partager l\'Application',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              // Ajoutez ici le code de partage de l'application
            },
          ),
        ],
      ),
    );
  }
}
