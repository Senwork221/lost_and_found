import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 39,
            width: 39,
            child: GestureDetector(
              child: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 39,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          // SizedBox(
          //   height: 39,
          //   width: 39,
          // child:

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_2_rounded,
              size: 40,
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
