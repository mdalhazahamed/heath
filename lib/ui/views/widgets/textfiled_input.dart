import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {Key? key,
      required this.hint,
      this.inputType,
      this.inputAction,
      this.color})
      : super(key: key);

  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: size.height * 0.07,
        width: size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: TextStyle(fontSize: 13, color: color),
              ),
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          ),
        ),
      ),
    );
  }
}
