import 'package:flutter/material.dart';

class DataObject {
  int id;
  String objectName;
  String description;
  String createdDate;
  String lieu;
  bool status;
  IconData icon;
  Color? color;

  DataObject(this.id, this.objectName, this.description, this.createdDate,
      this.lieu, this.status, this.icon, this.color);
}

List<DataObject> objects = objectsData
    .map(
      (item) => DataObject(
        item["id"],
        item["objectName"],
        item["description"],
        item["createdDate"],
        item["lieu"],
        item["status"],
        item["icon"],
        item["color"],
      ),
    )
    .toList();
List<Map<String, dynamic>> objectsData = [
  {
    'id': 1,
    'objectName': "Carte",
    'description': "description 1",
    'createdDate': "12/05/2023",
    'lieu': "Ucad",
    'status': true,
    "icon": Icons.card_giftcard,
    "color": const Color.fromARGB(255, 75, 180, 79),
  },
  {
    'id': 2,
    'objectName': "Calpet",
    'description': "description 2",
    'createdDate': "10/11/2022",
    'lieu': "Colobane",
    'status': false,
    "icon": Icons.wallet,
    "color": const Color.fromARGB(255, 255, 87, 34),
  },
  {
    'id': 3,
    'objectName': "Valise",
    'description': "description 3",
    'createdDate': "12/05/2023",
    'lieu': "Garage",
    'status': true,
    "icon": Icons.gif_box,
    "color": const Color.fromARGB(255, 124, 77, 255),
  },
  {
    'id': 4,
    'objectName': "Téléphone",
    'description': "description 4",
    'createdDate': "21/02/2023",
    'lieu': "Pikine",
    'status': true,
    "icon": Icons.phone_android,
    "color": const Color.fromARGB(255, 64, 196, 255),
  },
  {
    'id': 5,
    'objectName': "Montre",
    'description': "description 5",
    'createdDate': "21/02/2023",
    'lieu': "Ucad 2",
    'status': false,
    "icon": Icons.watch,
    "color": const Color.fromARGB(255, 245, 64, 255),
  },
  {
    'id': 6,
    'objectName': "Ordinateur",
    'description': "description 6",
    'createdDate': "08/01/2023",
    'lieu': "Ucad 2",
    'status': false,
    "icon": Icons.laptop,
    "color": const Color.fromARGB(255, 255, 195, 64),
  },
  {
    'id': 7,
    'objectName': "Télévision",
    'description': "description 7",
    'createdDate': "23/11/2022",
    'lieu': "Ucad 2",
    'status': false,
    "icon": Icons.tv,
    "color": const Color.fromARGB(255, 255, 195, 64),
  },
];
