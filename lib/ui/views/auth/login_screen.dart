import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:heath/ui/const/colors.dart';
import 'package:heath/ui/routes/route.dart';
import 'package:heath/ui/style/style.dart';
import 'package:heath/ui/views/widgets/password_input.dart';
import 'package:heath/ui/views/widgets/raounded_body.dart';
import 'package:heath/ui/views/widgets/textfiled_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 238, 238),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //title widget
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset("assets/images/logo.png", width: 45.w),
              Text("Heath", style: style18(Colors.black)),
              Text("OS", style: style20(Colors.black)),
            ]),
            SizedBox(height: 5.h),
            Text(
              "Sign to continue",
              style: style14(Colors.grey),
            ),

            //textField widget
            SizedBox(height: 15.h),
            TextInputField(
              
              color: Colors.grey,
              hint: 'Email',
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
            ),
            PasswordInput(
              hint: 'Password',
              inputAction: TextInputAction.next,
            ),
            SizedBox(height: 10.h),
            //rounded widget
            InkWell(
              onTap: () {
                Get.toNamed(bottonController);
              },
              child: RoundedButton(
                color: AppColors.roundedColor,
                buttonName: 'Login',
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: style12two,
                ),
                InkWell(
                    onTap: () {
                      Get.toNamed(registration);
                    },
                    child: Text(
                      "Register now",
                      style: style12two,
                    )),
              ],
            ),
            SizedBox(height: 15.h),
            InkWell(
              onTap: () {
                 Get.toNamed(forgetScreen);
              },
              child: Text(
                "Forgot your password?",
                style: style12two,
              ),
            ),
            SizedBox(height: 15.h),
            InkWell(
              onTap: () {},
              child: Text(
                "Call us",
                style: style12two,
              ),
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/uk.png", width: 25.w),
                SizedBox(width: 8.w),
                Container(
                  height: 25.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.roundedColor,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "EN",
                    style:
                        TextStyle(fontSize: 16, color: AppColors.roundedColor),
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  "বাং",
                  style: style14(Colors.grey),
                ),
                SizedBox(width: 8.w),
                Image.asset("assets/images/bangla.webp", width: 25.w),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
