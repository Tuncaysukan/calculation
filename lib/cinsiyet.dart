// Icon and  Text
import 'package:flutter/material.dart';

class IconCinsiyet extends StatelessWidget {
  final IconData cinsiyet;
  final String data;

  IconCinsiyet({required this.cinsiyet, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cinsiyet,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          data,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}