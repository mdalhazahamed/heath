import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heath/ui/const/colors.dart';
import 'package:heath/ui/style/style.dart';
import 'package:heath/ui/views/widgets/header_text.dart';
import 'package:heath/ui/views/widgets/raounded_body.dart';
import 'package:heath/ui/views/widgets/textfiled_input.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 238, 238),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //title widget
            SizedBox(height: 10),
            HeaderText(
              text: 'Forget your passwrod?',
              subText: "Send pharmacy name and mobile no",
            ),

            //textField widget
            SizedBox(height: 10.h),
            TextInputField(
              color: Colors.grey,
              hint: 'Pharmacy Name',
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
            ),
            TextInputField(
              color: Colors.grey,
              hint: 'Moblie No',
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
            ),
            SizedBox(height: 10.h),
            //rounded widget
            InkWell(
              onTap: () {},
              child: RoundedButton(
                color: AppColors.roundedColor,
                buttonName: 'Send',
              ),
            ),
            SizedBox(height: 10.h),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Back to login?",
                  style: style12two,
                )),
          ],
        ),
      ),
    );
  }
}
