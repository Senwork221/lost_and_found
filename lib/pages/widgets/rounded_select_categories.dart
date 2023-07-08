import 'package:flutter/material.dart';

class RoundedSelectField extends StatefulWidget {
  const RoundedSelectField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
    required this.controller,
    required this.categories,
    required this.selectedCategory,
  }) : super(key: key);

  final String hintText;
  final Icon icon;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final List<String> categories;
  final String selectedCategory;

  @override
  State<RoundedSelectField> createState() => _RoundedSelectFieldState();
}

class _RoundedSelectFieldState extends State<RoundedSelectField> {
  String dropdownValue = '';

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.selectedCategory;
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: widget.icon,
              hintText: widget.hintText,
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            value: dropdownValue,
            items: widget.categories.map((String category) {
              return DropdownMenuItem<String>(
                value: category,
                child: Text(category),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
                widget.onChanged(dropdownValue);
              });
            },
          ),
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: size.width * 0.96,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 200, 234, 255),
        borderRadius: BorderRadius.circular(9),
      ),
      child: child,
    );
  }
}
