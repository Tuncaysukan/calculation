import 'package:flutter/material.dart';

//My Widget
class MyWidget extends StatelessWidget {
  final Color renk;
  final Widget child;

  MyWidget({required this.renk, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: renk,
      ),
    );
  }
}
