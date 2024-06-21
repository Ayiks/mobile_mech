import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String text;
  double? size;
  HeadingText({super.key, required this.text, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontSize: size ?? 25,
          fontWeight: FontWeight.w600),
    );
  }
}
