import 'package:flutter/material.dart';

Widget customListTile(
    {required String title,
    required String singer,
    required String coverUrl,
    onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(image: NetworkImage(coverUrl))),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                singer,
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
