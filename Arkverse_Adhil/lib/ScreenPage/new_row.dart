import 'package:flutter/material.dart';

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final double sizeFont;
  final Function onTap;

  const NewRow(
      {
      // Key key,
      required this.icon,
      required this.text,
      required this.sizeFont,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: sizeFont),
          ),
        ],
      ),
    );
  }
}
