import 'package:flutter/material.dart';
import 'package:paymentintegration/presention/shared/style/color.dart';
// import 'package:payment_methode/presentation/shared/local/constance.dart';

class DefaultElevatedButton extends StatelessWidget {
  final dynamic pressed;
  final String text;
  const DefaultElevatedButton({
    Key? key,
    required this.pressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: pressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            redColor,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
