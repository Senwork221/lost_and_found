import 'package:flutter/material.dart';

class CustomListCategory extends StatefulWidget {
  const CustomListCategory({super.key});

  @override
  State<CustomListCategory> createState() => _CustomListCategoryState();
}

class _CustomListCategoryState extends State<CustomListCategory> {
  int selectedIndex = -1; // Initially no item is selected

  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          selected: index == selectedIndex,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      },
    );
  }
}
