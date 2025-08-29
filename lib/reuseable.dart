import 'package:flutter/material.dart';

class Reuseable extends StatelessWidget {
  Reuseable(
      {required this.colour,
      required this.Containerchild,
      required this.onPress});

  final Color colour;
  final Widget Containerchild;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Containerchild,
      ),
    );
  }
}
