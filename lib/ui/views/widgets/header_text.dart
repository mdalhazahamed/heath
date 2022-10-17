import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heath/ui/style/style.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final String subText;

  const HeaderText({super.key, required this.text, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.h),
        Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset("assets/images/logo.png", width: 45.w),
            Text("Heath", style: style18(Colors.black)),
            Text("OS", style: style20(Colors.black)),
          ]),
        ),
        Text(
          text,
          style: style20(Colors.black),
        ),
        SizedBox(height: 15.h),
        Text(
          subText,
          style: style14(Colors.grey),
        ),
      ],
    );
  }
}
