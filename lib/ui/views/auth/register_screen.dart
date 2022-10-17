import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heath/ui/const/colors.dart';
import 'package:heath/ui/routes/route.dart';
import 'package:heath/ui/views/widgets/header_text.dart';
import 'package:heath/ui/views/widgets/raounded_body.dart';
import 'package:heath/ui/views/widgets/textfiled_input.dart';

import '../../style/style.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 238, 238),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //title widget
              HeaderText(
                text: 'Welcome',
                subText: 'Sign to continue',
              ),

              SizedBox(height: 10.h),
              //textField widget
              TextInputField(
                color: Colors.grey,
                hint: 'Full Name *',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ),
              TextInputField(
                color: Colors.grey,
                hint: 'Mobile *',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ),

              TextInputField(
                color: Colors.grey,
                hint: 'Pharmacy Name *',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ),
              TextInputField(
                color: Colors.grey,
                hint: 'Area *',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ),
              TextInputField(
                color: Colors.grey,
                hint: 'Address *',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ),
              TextInputField(
                hint: 'License No.',
                color: Colors.grey,
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ),

              InkWell(
                onTap: () {},
                child: RoundedButton(
                  color: Colors.white,
                  buttonName: 'Profile Photo',
                ),
              ),

              //rounded widget
              InkWell(
                onTap: () {},
                child: RoundedButton(
                  color: Colors.white,
                  buttonName: 'License or NID Photo',
                ),
              ),

              InkWell(
                onTap: () {
                  Get.toNamed(bottonController);
                },
                child: RoundedButton(
                  color: AppColors.roundedColor,
                  buttonName: 'Register',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
