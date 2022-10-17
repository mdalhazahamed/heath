import 'package:flutter/material.dart';
import 'package:heath/ui/const/colors.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.buttonName, required this.color})
      : super(key: key);

  final String buttonName;
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
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
          child: Text(
            buttonName,
          ),
        ),
      ),
    );
  }
}
