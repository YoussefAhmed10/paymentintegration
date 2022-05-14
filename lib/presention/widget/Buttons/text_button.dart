import 'package:flutter/material.dart';

class CustomeTButton extends StatelessWidget {
  final dynamic pressed;
  final String text;
  final Color? color;
  const CustomeTButton({
    Key? key,
    required this.pressed,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: pressed,
      child: Text(text, style: TextStyle(color: color)),
    );
  }
}

Widget defaultTextButton(
  Function pressed,
  String text,
) =>
    TextButton(
      onPressed: () {
        pressed;
      },
      child: Text(text),
    );
