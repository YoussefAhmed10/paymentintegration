import 'package:flutter/material.dart';
// import 'package:payment_methode/presentation/shared/local/constance.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final dynamic validate;
  final TextInputType type;
  final Widget label;
  final String hint;
  final dynamic preIcon;
  final IconData? sufIcon;
  final dynamic sufixPressed;
  final Function? onsubmit;
  final Function? onchange;

  final bool isPasswored;
  const DefaultFormField({
    Key? key,
    required this.controller,
    required this.validate,
    required this.type,
    required this.label,
    required this.hint,
    this.preIcon,
    this.sufixPressed,
    this.sufIcon,
    this.onsubmit,
    this.onchange,
    this.isPasswored = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validate,
      onFieldSubmitted: (onsubmit) {},
      onChanged: (onchange) {},
      keyboardType: type,
      obscureText: isPasswored,
      decoration: InputDecoration(
        prefixIcon: Icon(
          preIcon,
          // color: mostUsedColor,
        ),
        suffixIcon: SizedBox(
          child: GestureDetector(
            child: Icon(sufIcon, color: Colors.grey),
            onTap: sufixPressed,
          ),
        ),
        label: label,
        labelStyle: const TextStyle(
          fontSize: 16.0,
          // color: mostUsedColor,
          fontWeight: FontWeight.bold,
        ),
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.blueAccent,
            width: 2.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          // borderSide: BorderSide(color: mostUsedColor, width: 2.5),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 5.0),
        ),
      ),
    );
  }
}
