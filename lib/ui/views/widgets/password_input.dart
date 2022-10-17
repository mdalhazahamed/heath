import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;

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
            padding:  EdgeInsets.only(left: 25.w),
            child: TextField(
              decoration: InputDecoration(
                
                  border: InputBorder.none,
                hintText: hint,
                hintStyle: TextStyle(fontSize: 13.sp, color: Colors.grey),
              ),
              obscureText: true,
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          ),
        ),
      ),
    );
  }
}
